// pages/actionMessage/actionMessage.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
        TabCur: 0,
        scrollLeft: 0,
        content: [{
            id: 0,
            name: "正在进行"
        }, {
            id: 1,
            name: "历史活动"
        }],
    },

    //页面跳转  传输id
    // 跳转创建页面    （点击编辑）
    skipActivityCreation: function(e) {
        var that = this;
        var pwdid = e.currentTarget.dataset.current;
        console.log(pwdid);
        wx.navigateTo({
            url: '../activityEdit/activityEdit?pwdid=' + pwdid
        })
    },

    //跳转时候出现广告
    jili1: function(e) {
        var that = this;
        let videoAd = wx.createRewardedVideoAd({
            adUnitId: "dc82c5bb492d2093fe5b57d7de7f78aa"
        })
        wx.showModal({
            title: '提示',
            content: '看完广告后查看报名信息',
            success(res) {
                if (res.confirm) {
                    console.log('用户点击确定')
                        //加载激励视频
                    videoAd.load()
                        .then(() => videoAd.show())
                        .catch(err => console.log(err.errMsg))
                    videoAd.onClose((status) => {
                        if (status && status.isEnded || status === undefined) { //成功看完视频
                            that.skipSignUpDetail(e);
                        } else {
                            // 播放中途退出，进行提示
                            console.log('用户没看完就关闭')
                            wx.showToast({
                                title: '看完广告就能查看报名信息啦',
                                icon: "none",
                                duration: 3000,
                            })
                        }
                    })

                } else if (res.cancel) {
                    console.log('用户点击取消')
                    wx.showToast({
                        title: '看完广告就能查看报名信息啦',
                        icon: "none",
                        duration: 3000,
                    })
                }
            }
        })
    },


    //跳转报名人员页面   （查看报名）
    skipSignUpDetail: function(e) {
        var that = this;
        var pwdid = e.currentTarget.dataset.current;
        wx.navigateTo({
            url: '../signUpDetail/signUpDetail?pwdid=' + pwdid
        })
    },

    tabSelect(e) {
        this.setData({
            TabCur: e.currentTarget.dataset.id,
            scrollLeft: (e.currentTarget.dataset.id - 1) * 60
        })
    },

    // 获取滚动条当前位置
    onPageScroll: function(e) {
        if (e.scrollTop > 100) { //页面距离大于100px,则显示回到顶部控件
            this.setData({
                cangotop: true
            });
        } else {
            this.setData({
                cangotop: false
            });
        }
    },

    //回到顶部，内部调用系统API
    goTop: function(e) { // 一键回到顶部
        if (wx.pageScrollTo) {
            wx.pageScrollTo({
                scrollTop: 0
            })
        } else {
            wx.showModal({
                title: '提示',
                content: '当前微信版本过低，暂无法使用该功能，请升级后重试。'
            })
        }
    },

    /**
     * 删除自己创建的活动
     * 
     */
    deleteActive: function(options) {
        var that = this;
        var pwdid = options.target.dataset.current;
        var activer_openid = wx.getStorageSync('openid');

        //弹出模态框
        wx.showModal({
            title: '提示',
            content: '确定删除本活动吗',
            success(res) {
                if (res.confirm) {
                    //删除操作
                    wx.request({
                        url: that.data.ip1 + "/activeWeb/deleteActive",
                        data: {
                            activer_openid: activer_openid,
                            pwdid: pwdid
                        },
                        method: 'GET',
                        header: {
                            'content-type': 'application/json'
                        },
                        success: function(res) {
                            console.log(res.data);
                            that.onLoad();
                        }
                    })


                } else if (res.cancel) {
                    console.log('用户点击取消')
                    wx.showToast({
                        title: '小心删除按钮哟~',
                        icon: "none",
                        duration: 1000,
                    })
                }
            }
        })

    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        var that = this;
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

        //查询我创建的正在进行的活动
        wx.request({
            url: that.data.ip1 + "/activeWeb/queryMyActive",
            data: {
                activer_openid: activer_openid,
            },
            method: 'GET',
            header: {
                'content-type': 'application/json'
            },
            success: function(res) {
                console.log(res.data);
                that.setData({
                    inProgress: res.data
                })

            }
        })


        //查询我创建的已经过期的活动
        wx.request({
            url: that.data.ip1 + "/activeWeb/queryMyHistoryActive",
            data: {
                activer_openid: activer_openid,
            },
            method: 'GET',
            header: {
                'content-type': 'application/json'
            },
            success: function(res) {
                console.log(res.data);
                that.setData({
                    history: res.data
                })

            }
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
    onShareAppMessage: function(options) {
        var that = this;
        var pwdid = options.target.dataset.current;
        console.log('/pages/activityDetail/activityDetail?pwdid=' + pwdid);
        return {
            title: '快来参加我创建的活动吧',
            desc: '我们一起来玩吧!',
            path: '/pages/activityDetail/activityDetail?pwdid=' + pwdid,
            imageUrl: '../../images/picturePoster-1.png'
        }
    }
})