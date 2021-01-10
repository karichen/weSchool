// pages/signUp/signUp.js
/**

     */
Page({
    /**
     * 页面的初始数据
     */

    data: {

        // 轮播图的数据
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
        // ip1: "192.168.137.1",
        cardCur: 0,
        fields: "",
        swiperList: [{
                id: 0,
                type: 'image',
                url: "../../images/picturePoster-1.png"
            },
            {
                id: 1,
                type: 'image',
                url: "../../images/picturePoster-2.png"
            }, {
                id: 2,
                type: 'image',
                url: "../../images/picturePoster-3.png"
            }, {
                id: 3,
                type: 'image',
                url: "../../images/picturePoster-5.png"
            }
        ],

        modalName: null,
    },

    showModal(e) {
        var that = this;
        var infoList = new Array();
        var i = 0;
        for (const key in e.detail.value) { //将表单信息提取成kv对赋值到数组中
            if (e.detail.value.hasOwnProperty(key)) {
                const element = e.detail.value[key];
                var showInfo = new Object();
                showInfo["key"] = key;
                showInfo["value"] = element;
                infoList.push(showInfo);
                ++i;
            }
        }
        that.setData({
            infoList: infoList
        })
        console.log(that.data.infoList);

        this.setData({
            modalName: "show"
        })

    },

    //报名前出现广告
    // jili2: function(e) {
    //     var that = this;
    //     let videoAd = wx.createRewardedVideoAd({
    //         adUnitId: "d114eca82228468ef582acd7de58dda1"
    //     })
    //     wx.showModal({
    //         title: '提示',
    //         content: '看完广告后即可报名',
    //         success(res) {
    //             if (res.confirm) {
    //                 console.log('用户点击确定')

    //                 //加载激励视频
    //                 videoAd.load()
    //                     .then(() => videoAd.show())
    //                     .catch(err => console.log(err.errMsg))
    //                 videoAd.onClose((status) => {
    //                     if (status && status.isEnded || status === undefined) { //成功看完视频

    //                         that.showModal(e);
    //                     } else {
    //                         // 播放中途退出，进行提示
    //                         console.log('用户没看完就关闭')
    //                         wx.showToast({
    //                             title: '看完广告就能报名啦',
    //                             icon: "none",
    //                             duration: 3000,
    //                         })
    //                     }
    //                 })

    //             } else if (res.cancel) {
    //                 console.log('用户点击取消')
    //                 wx.showToast({
    //                     title: '看完广告就能报名啦',
    //                     icon: "none",
    //                     duration: 3000,
    //                 })
    //             }
    //         }
    //     })
    // },

    skip: function(e) {
        var that = this;
        // that.showModal(e);
        wx.request({
            url: that.data.ip1 + "/activeWeb/signUpActive",
            method: 'GET',
            header: {
                'content-type': 'application/json'
            },
            data: {
                infoList: JSON.stringify(that.data.infoList),
                pwdid: that.data.pwdid,
                openid: wx.getStorageSync('openid'),
            },
            success: function(res) {
                that.hideModal();
                console.log(res.data);
                if (res.data > 0) { //报名成功
                    wx.showModal({
                        title: '提示',
                        confirmText: '确定',
                        content: '报名成功',
                        success: function(res) {
                            var starttime = that.data.starttime;
                            var endtime = that.data.endtime;
                            var place = that.data.place;
                            var major = that.data.major2;
                            var pwdid = that.data.pwdid;
                            console.log('../signUpSuccess/signUpSuccess?starttime=' + starttime + '&&endtime=' + endtime + '&&place=' + place + '&&major=' + major)
                            if (res.cancel) {
                                wx.redirectTo({
                                    url: '../signUpSuccess/signUpSuccess?starttime=' + starttime + '&&endtime=' + endtime + '&&place=' + place + '&&major=' + major + "&&isCreate=0" + "&&pwdid=" + pwdid
                                })
                            } else if (res.confirm) {
                                wx.redirectTo({
                                    url: '../signUpSuccess/signUpSuccess?starttime=' + starttime + '&&endtime=' + endtime + '&&place=' + place + '&&major=' + major + "&&isCreate=0" + "&&pwdid=" + pwdid
                                })
                            }
                        },
                    })
                } else if (res.data == -2) { //重复报名
                    wx.showModal({
                        title: '提示',
                        confirmText: '确定',
                        content: '不可重复报名',
                        success: function(res) {
                            if (res.cancel) {
                                wx.redirectTo({
                                    url: '../allActivities/allActivities'
                                })
                            } else if (res.confirm) {
                                wx.redirectTo({
                                    url: '../allActivities/allActivities'
                                })
                            }
                        },
                    })
                } else {
                    wx.showModal({
                        title: '提示',
                        confirmText: '确定',
                        content: '网络状态不稳定',
                        success: function(res) {
                            if (res.cancel) {
                                wx.redirectTo({
                                    url: '../allActivities/allActivities'
                                })
                            } else if (res.confirm) {
                                wx.redirectTo({
                                    url: '../allActivities/allActivities'
                                })
                            }
                        },
                    })
                }
            }
        })
    },


    hideModal(e) {
        this.setData({
            modalName: null
        })
    },


    textareaBInput(e) {
        this.setData({
            textareaBValue: e.detail.value
        })
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {

        var that = this;
        var pwdid = options.pwdid;
        var activer_openid = wx.getStorageSync('openid');
        if (activer_openid == "") {
            wx.showModal({
                title: '提示',
                confirmText: '确定',
                content: '请先前往个人中心完成注册认证',
                success: function(res) {
                    if (res.cancel) {
                        wx.switchTab({
                            url: '../mine/mine'
                        })
                    } else if (res.confirm) {
                        wx.switchTab({
                            url: '../mine/mine'
                        })
                    }
                },
            })
        }

        if (pwdid) {
            this.setData({
                pwdid: options.pwdid,
            })
        }
        wx.request({
            url: that.data.ip1 + "/activeWeb/queryActive",
            method: 'GET',
            header: {
                'content-type': 'application/json'
            },
            data: {
                pwdid: options.pwdid,
            },
            success: function(res) {
                console.log(res.data);
                that.setData({
                    fields: JSON.parse(res.data.fields),
                    starttime: res.data.starttime,
                    endtime: res.data.endtime,
                    place: res.data.place,
                    major2: res.data.major,
                })

                var swiperList = that.data.swiperList;
                if (res.data.imgUrl1 != "http:chk") swiperList[0].url = res.data.imgUrl1
                if (res.data.imgUrl2 != "http:chk") swiperList[1].url = res.data.imgUrl2
                if (res.data.imgUrl3 != "http:chk") swiperList[2].url = res.data.imgUrl3
                if (res.data.imgUrl4 != "http:chk") swiperList[3].url = res.data.imgUrl4
                that.setData({ swiperList: swiperList });
            }
        })
    },


    backHome: function() {
        wx.reLaunch({
            url: '/pages/home/home'
        })
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
    onShareAppMessage: function() {

    }
})