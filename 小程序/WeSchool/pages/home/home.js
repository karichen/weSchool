// pages/home/home.js
const app = getApp();
Page({
    data: {
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
        isShow: false,
        content: "",
        gridCol: 4,
        cardCur: 0,
        swiperList: [{
            id: 0,
            type: 'image',
            url: "../../images/picturePoster-9.png"
        }, {
            id: 1,
            type: 'image',
            url: "../../images/picturePoster-1.png"
        }, {
            id: 2,
            type: 'image',
            url: "../../images/picturePoster-7.png"
        }, {
            id: 3,
            type: 'image',
            url: "../../images/picturePoster-8.png"
        }, {
            id: 4,
            type: 'image',
            url: "../../images/picturePoster-2.png"
        }, {
            id: 5,
            type: 'image',
            url: "../../images/picturePoster-3.png"
        }, {
            id: 6,
            type: 'image',
            url: "../../images/picturePoster-4.png"
        }, {
            id: 7,
            type: 'image',
            url: "../../images/picturePoster-5.png"
        }, {
            id: 8,
            type: 'image',
            url: "../../images/picturePoster-6.png"
        }, {
            id: 9,
            type: 'image',
            url: "../../images/picturePoster-10.png"
        }],
        /*列表的数据
          icon: 'edit',
          color: 'red',
          badge: 0,   
          name: '我所创建的', 名字
          skip: ""     跳转
        */
        iconList: [{
                id: 2,
                icon: 'apps',
                color: 'cyan',
                badge: 0,
                name: '校园活动',
                skip: "../allActivities/allActivities"
            }, {
                id: 0,
                icon: 'edit',
                color: 'red',
                badge: 0,
                name: '我所创建的',
                skip: "../myAction/myAction"
            }, {
                id: 1,
                icon: 'friend',
                color: 'orange',
                badge: 0,
                name: '我的活动',
                skip: "../actionMessage/actionMessage"
            }, {
                id: 3,
                icon: 'read',
                color: 'blue',
                badge: 0,
                name: 'C易学通',
                skip: "../video/video"
            }, {
                id: 4,
                icon: 'command',
                color: 'green',
                badge: 0,
                name: '垃圾分类',
                skip: "../handbook/handbook"
            }, {
                id: 5,
                icon: 'post',
                color: 'purple',
                badge: 0,
                name: '我要建议',
                skip: '../feedback/feedback'
            }, {
                id: 6,
                icon: 'messagefill',
                color: 'mauve',
                badge: 0,
                name: '联系我们',
                skip: "../contactMe/contactMe"
            }, {
                id: 7,
                icon: 'sort',
                color: 'olive',
                badge: 0,
                name: '更多好玩',
                skip: ""
            },


        ],
        // , {
        //             id: 5,
        //             icon: 'repairfill',
        //             color: 'blue',
        //             badge: 0,
        //             name: '活动管理',
        //             skip: ""
        //         }
        // 颜色列表
        ColorList: app.globalData.ColorList,
        activities: [{
            id: 0,
            major: '互联网+',
            flag: 0
        }, {
            id: 0,
            major: '电子商务大赛',
            flag: 0
        }, {
            id: 1,
            major: '创新创业大赛',
            flag: 0
        }, {
            id: 2,
            major: '创青春比赛',
            flag: 0
        }, {
            id: 3,
            major: 'ACM',
            flag: 0
        }, {
            id: 4,
            major: '蓝桥杯',
            flag: 0
        }, {
            id: 5,
            major: 'C4大赛',
            flag: 0
        }, {
            id: 6,
            major: '微信小程序开发者大赛',
            flag: 0
        }, {
            id: 7,
            major: 'JSJ设计大赛',
            flag: 0
        }, {
            id: 8,
            major: '大创杯',
            flag: 0
        }, {
            id: 9,
            major: '英语口语翻译大赛',
            flag: 0
        }, {
            id: 10,
            major: 'CET等级模拟考试',
            flag: 0
        }, {
            id: 11,
            major: '正大杯',
            flag: 0
        }, {
            id: 12,
            major: '前端网页开发大赛',
            flag: 0
        }, {
            id: 13,
            major: '华三杯',
            flag: 0
        }],

    },

    clear: function() {
        var that = this;
        that.setData({
            content: ""
        });
    },


    searchSkip: function(event) {
        wx.navigateTo({
            url: '../searchInput/searchInput'
        })
    },

    //监听搜索框输入的文字
    changeSearch: function(event) {
        let that = this;
        var inputSearch = event.detail.value;
        console.log(inputSearch);
        if (inputSearch == "") {
            that.setData({
                word: inputSearch
            })
        } else {
            that.setData({
                isShow: true,
                content: inputSearch
            })
        }
    },

    // 随机
    makeRandomArr: function() {
        var that = this;
        var num = 7;
        var arrList = that.data.activities;
        var newArrList = Array();
        if (num > arrList.length) {
            return;
        }
        var tempArr = arrList.slice(0);
        var newArrList = [];
        for (var i = 0; i < num; i++) {
            var random = Math.floor(Math.random() * (tempArr.length - 1));
            var arr = tempArr[random];
            tempArr.splice(random, 1);
            newArrList.push(arr);
        }
        that.setData({
            RandomArr: newArrList
        })
    },


    //8个列表的页面跳转
    skipIconList: function(e) {
        var skip = e.currentTarget.dataset.current;
        var id = e.currentTarget.dataset.id;
        if (id == 1) {
            wx.switchTab({
                url: '../actionMessage/actionMessage'
            })
        } else if (id == 7) {
            wx.showModal({
                title: '提示',
                confirmText: '确定',
                content: '更多功能还在开发，敬请期待',
            })
        } else {
            wx.navigateTo({
                url: skip
            })
        }

    },

    //跳转创建活动
    skipCreateActivity: function() {
        wx.navigateTo({
            url: '../activityCreation/activityCreation'
        })
    },

    //跳转活动报名
    skipCreateActivity2: function(e) {
        var major = e.currentTarget.dataset.current;
        console.log(major);
        wx.navigateTo({
            url: '../activityCreation/activityCreation?major=' + major
        })
    },


    //跳转搜索结果
    skipResult: function(e) {
        var content = this.data.content;
        content = (content == undefined ? undefined : content.replace(/\s+/g, ""));
        if (content == undefined || content == "") {
            wx.showModal({
                title: '提示',
                confirmText: '确定',
                content: '搜索内容不可为空',
                success: function(res) {
                    if (res.cancel) {

                    } else if (res.confirm) {

                    }
                },
            })
        } else {
            console.log(content);
            wx.navigateTo({
                url: '../searchResult/searchResult?content=' + content
            })
        }

    },

    formName: function(e) {
        this.setData({
            content: e.detail.value
        })
    },

    // cardSwiper
    cardSwiper(e) {
        this.setData({
            cardCur: e.detail.current
        })
    },


    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        //var that = this;
        this.makeRandomArr();
        // if (options.pwdid) {
        //     that.setData({
        //         id: options.pwdid
        //     })
        // }
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

    },

    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function() {

    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function(e) {

    }
})