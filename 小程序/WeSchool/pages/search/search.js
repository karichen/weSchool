const app = getApp();
Page({
    data: {
        ColorList: app.globalData.ColorList,
        // 前端 页面调整数据
        hide: false,
        isshow: 0,
        current: 1,
        ispicture: 1,
        transform: {
            "干垃圾": "DryGarbage.png",
            "厨余垃圾": "KitchenWaste.png",
            "有害垃圾": "HarmfulWaste.png",
            "有毒有害垃圾": "HarmfulWaste.png",
            "其他垃圾": "OtherWaste.png",
            "可回收垃圾": "RecyclableWaste.png",
            "湿垃圾": "WetGarbage.png",
        }, //中文转成英文
        kind: "non-existent.jpg", //用于选择图片

        // 后端 数据库传来或传走数据
        imgs: [], //本地图片地址数组
        picPaths: [], //网络路径
        source: '../../images/demoPicture.png',
        obj: {},
        name: "",
        wordDescription: '',
        hotSearch: [],
        showHistory: false,
        //ip: "127.0.0.1",
        ip: "www.petchk.cn",
    },

    toaboutUs: function() {
        console.log("ewqewr");
        wx.navigateTo({
            url: '../aboutUs/aboutUs'
        })
    },

    //点击搜索
    clickSearch: function(e) {
        this.setData({
            wordDescription: e.currentTarget.dataset.current,
            ispicture: 0,
        });
        this.upWords();
    },

    //返回
    back: function() {
        this.openLocationsercher();
        this.queryData(0, 10, "queryHot.php");
        this.setData({
            wordDescription: "",
            isshow: 0,
            ispicture: 1,
            kind: "non-existent.jpg"
        })
    },

    //获取缓存数据
    openLocationsercher: function() {
        this.setData({
            historySearch: wx.getStorageSync('historySearch'), //若无储存则为空
        })
    },

    // 查询数据
    queryData: function(star, length, php) {
        var that = this;
        //导航栏加载动画
        wx.showNavigationBarLoading();
        wx.request({
            url: "https://" + that.data.ip + "/api/" + php, //实际接口地址
            data: {
                star: star,
                length: length,
            },
            method: 'POST',
            header: {
                'content-type': 'application/x-www-form-urlencoded'
            },
            success: function(res) {
                that.setData({
                        hotSearch: res.data,
                    })
                    // 结束导航栏加载动画
                wx.hideNavigationBarLoading();
            }
        })
    },

    //页面之间的跳转
    tabNav: function(e) {
        console.log(e.currentTarget.dataset.current, 111, this.data.current);
        if (e.currentTarget.dataset.current == this.data.current) {
            return false;
        } else {
            this.setData({
                current: e.currentTarget.dataset.current,
            })
        }
    },

    //获取前台word的input数据
    wordDescriptionInput: function(e) {
        this.setData({
            wordDescription: e.detail.value
        })
    },


    //监听搜索框输入的文字
    changeSearch: function(event) {
        let that = this;
        var inputSearch = event.detail.value;
        if (inputSearch == "") {
            that.setData({
                isshow: 0,
                ispicture: 1,
                kind: "non-existent.jpg",
                wordDescription: inputSearch
            })
        } else {
            that.setData({
                ispicture: 0,
                wordDescription: inputSearch
            })
        }
    },

    //清除历史搜索
    searchClear: function() {
        wx.showModal({
            content: '确定要删除历史记录？',
            cancelText: '取消',
            confirmText: '确定',
            success: res => {
                var that = this;
                if (res.confirm) {
                    wx.removeStorage({
                        key: 'historySearch',
                        success: function(res) {
                            that.setData({
                                historySearch: ""
                            });
                        }
                    })
                }
            }
        })
    },

    //文字上传至服务器(优化了输入框为空的情况)
    upWords: function() {
        var that = this;
        var i;
        // 优化了输入框为空的情况
        if (that.data.wordDescription == "") {
            wx.showToast({
                title: '内容不能为空',
                icon: 'success',
                duration: 800
            })
        } else {
            //历史搜索功能保存输入框输入
            var inputValue = that.data.wordDescription;
            var historySearch = wx.getStorageSync("historySearch");
            if (historySearch.length == 0) {
                historySearch = new Array();
                historySearch[0] = inputValue;
            } else if (historySearch.length < 10 && inputValue !== "") {
                historySearch[historySearch.length] = inputValue;
            } else if (historySearch.length >= 10 && inputValue !== "") {
                for (i = 0; i < historySearch.length; i++) {
                    historySearch[i] = historySearch[i + 1];
                }
                historySearch[historySearch.length - 1] = inputValue;
            };
            wx.setStorageSync('historySearch', historySearch);
            var value = wx.getStorageSync("historySearch");
            console.log(value);
            //开启加载
            this.setData({
                    loadModal: true
                })
                //调用百度api
            wx.request({
                url: "https://" + that.data.ip + "/api/rubbish.php",
                method: 'GET',
                header: {
                    'Content-Type': 'application/json'
                },
                data: { //请求数据
                    wordDescription: that.data.wordDescription
                },
                success: function(res) { //收到开发者服务成功返回的回调函数
                    //有问题——————————
                    wx.hideNavigationBarLoading();
                    var kind = res.data.split('垃圾')[0];
                    kind = kind + "垃圾";
                    //有问题———————— console.log(kind);
                    if (res.data == "") {
                        kind: "non-existent.jpg"
                    }
                    that.setData({
                        describtionw: res.data,
                        isshow: 1,
                        kind: that.data.transform[kind], //改
                        loadModal: false //关闭加载
                    })
                },
                fail: function() { //接口调用失败的回调函数
                    wx.hideNavigationBarLoading();
                    that.setData({
                        current: 3,
                        loadModal: false //关闭加载
                    })
                },
                complete: function() { //接口调用结束的回调函数（调用成功、失败都会执行）
                    console.log("complete")
                }
            })
        }
    },

    // 图片识别上传服务器
    upImgs: function() {
        var that = this;
        //开启加载
        this.setData({
            loadModal: true
        })
        wx.uploadFile({
            url: "https:/" + that.data.ip + "/api/rubbish.php",
            filePath: that.data.source,
            name: 'imgfile',
            header: {
                'Content-Type': 'application/json'
            },
            data: {},
            formData: null,
            success: function(res) {
                //有问题
                if (res.data == "{'status':-1,'message':'fail'}") {
                    that.setData({
                        describtion: "照片不清晰",
                        loadModal: false //关闭加载
                    })
                } else {
                    that.setData({
                        describtion: res.data,
                        loadModal: false //关闭加载
                    })
                }
                console.log(res.data);
            },
            fail: function() { //接口调用失败的回调函数
                wx.hideNavigationBarLoading();
                that.setData({
                    current: 3,
                    loadModal: false //关闭加载
                })
            },
        })
    },

    /**
    * 生命周期函数--监听页面加载
    *  HotSearch:[],
     HistorySearch:[]
    */
    onLoad: function(options) {
        this.queryData(0, 8, "queryHot.php");
        this.openLocationsercher();
    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function() {

    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function() {

    },

    /**
     * 生命周期函数--监听页面隐藏
     */
    onHide: function() {

    },

    /**
     * 生命周期函数--监听页面卸载
     */
    onUnload: function() {

    },

    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh: function() {
        // 显示顶部刷新图标
        console.log("2121");
        wx.showNavigationBarLoading();
        this.openLocationsercher();
        this.queryData(0, 10, "queryHot.php");
        this.setData({
                kind: "non-existent.jpg",
                current: 1,
                wordDescription: "",
                isshow: 0,
                ispicture: 1,
                source: '../../images/demoPicture.png',
            })
            // 停止下拉动作
        wx.stopPullDownRefresh();
        // 隐藏导航栏加载框
        wx.hideNavigationBarLoading();
    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function() {

    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function() {

    }

})