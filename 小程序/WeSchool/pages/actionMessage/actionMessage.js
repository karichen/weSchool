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
        isShow: false,
        major: null,
        content: [{
            id: 0,
            name: "正在进行"
        }, {
            id: 1,
            name: "历史活动"
        }],
    },



    // 对话框 star===========================================================================
    //取消参加 （ 显示对话框 ）
    showModal(e) {
        var major = e.currentTarget.dataset.major;
        var starttime = e.currentTarget.dataset.starttime;
        var endtime = e.currentTarget.dataset.endtime;
        var place = e.currentTarget.dataset.place;
        var pwdid = e.currentTarget.dataset.pwdid;
        this.setData({
            major: major,
            starttime: starttime,
            place: place,
            endtime: endtime,
            isShow: true,
            pwdid: pwdid
        })
    },

    //点击确定
    confirm(e) {
        var that = this;
        var activer_openid = wx.getStorageSync('openid');
        wx.request({
            url: that.data.ip1 + "/activeWeb/cancelMypartActive",
            data: {
                activer_openid: activer_openid,
                pwdid: that.data.pwdid
            },
            method: 'GET',
            header: {
                'content-type': 'application/json'
            },
            success: function(res) {
                console.log(res.data);
                that.setData({
                    isShow: false
                })
                if (res.data > 0) { //取消成功
                    that.onLoad();
                } else {
                    wx.showModal({
                        title: '错误',
                        content: '网络状态错误'
                    })
                }
            }
        })
    },

    //页面跳转
    skip: function(e) {
        var pwdid = e.currentTarget.dataset.pwdid;
        console.log(pwdid);
        wx.navigateTo({
            url: '../activityDetail/activityDetail?pwdid=' + pwdid
        })
    },

    // 点击取消
    hideModal(e) {
        this.setData({
            isShow: false
        })
    },
    // 对话框end===========================================================================

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

        wx.request({
            url: that.data.ip1 + "/activeWeb/queryMypartActive",
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

        wx.request({
            url: that.data.ip1 + "/activeWeb/queryHistoryMypartActive",
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
        this.onLoad();
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