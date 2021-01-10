// pages/feedback/feedback.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
    },

    formSubmit(e) {
        var that = this;
        var name = e.detail.value.name;
        var phone = e.detail.value.phone;
        var QQ = e.detail.value.QQ;
        var wxnum = e.detail.value.wx;
        var feed_back = e.detail.value.feed_back;
        if (feed_back == "") {
            wx.showModal({
                title: '提示',
                confirmText: '提示',
                content: '反馈意见必填',
            })
        } else {
            wx.request({
                url: that.data.ip1 + "/activeWeb/feedBack",
                data: {
                    name: name,
                    phone: phone,
                    QQ: QQ,
                    wxnum: wxnum,
                    feed_back: feed_back,
                    openid: that.data.openid
                },
                method: 'GET',
                header: {
                    'content-type': 'application/json'
                },
                success: function(res) {
                    if (res.data == 1) {
                        wx.showModal({
                            title: '提示',
                            confirmText: '提示',
                            content: '反馈成功,我们会努力改正的',
                        })
                    } else {
                        wx.showModal({
                            title: '提示',
                            confirmText: '提示',
                            content: '网络出错,请稍后再试',
                        })
                    }
                    wx.reLaunch({
                        url: '/pages/home/home',
                    })
                }
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

        that.setData({
            openid: activer_openid
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