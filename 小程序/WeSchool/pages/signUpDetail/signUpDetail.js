// pages/signUpDetail/signUpDetail.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        ip1: "127.0.0.1:8085",
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


        if (options.pwdid) {
            wx.request({
                url: that.data.ip1 + "/activeWeb/queryListQuser",
                data: {
                    pwdid: options.pwdid
                },
                method: 'GET',
                header: {
                    'content-type': 'application/json'
                },
                success: function(res) {
                    that.setData({
                        people: res.data
                    })
                    console.log(res.data)
                }
            })
        }

        // console.log(options.pwdid)
        var url = that.data.ip1 + "/activeWeb/ExcelDownloads?pwdid=" + options.pwdid
        that.setData({
            url: url
        })
    },

    copy: function(e) {
        var that = this;
        wx.setClipboardData({
            data: that.data.url,
            success: function(res) {
                wx.showToast({
                    title: '复制成功',
                });
            }
        });
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