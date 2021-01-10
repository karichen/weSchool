// pages/mine/mine.js
const app = getApp();
Page({

    /**
     * 页面的初始数据
     */
    data: {
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
        ip2: "127.0.0.1",
    },

    skipContactMe: function() {
        wx.navigateTo({
            url: '../contactMe/contactMe'
        })
    },

    skipActivities: function() {
        wx.navigateTo({
            url: '../allActivities/allActivities'
        })
    },


    skipMyAction: function() {
        wx.navigateTo({
            url: '../myAction/myAction'
        })
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        var that = this;
        wx.login({
            success: function(res) {
                var code = res.code; //发送给服务器的code
                that.setData({
                    code: code
                })

            },
            fail: function(error) {

            }
        })

    },

    // 删除缓存
    clearStorage: function() {
        wx.clearStorage();
    },


    // 获取注册
    getRegister: function(e) {
        var userNick = wx.getStorageSync('userNick');
        var avaUrl = wx.getStorageSync('avaUrl');
        var gender = wx.getStorageSync('gender');
        var openid = wx.getStorageSync('openid')
        wx.request({
            url: that.data.ip1 + "/activeWeb/registUser",
            data: {
                openid: openid,
                userNick: userNick,
                avaUrl: avaUrl,
                gender: gender,
            },
            method: 'GET',
            header: {
                'content-type': 'application/json'
            },
            success: function(res) {
                console.log(res.data);
            }
        })
    },

    getUserInfod: function(e) {
        var that = this;

        that.setData({
            loadModal: true
        })

        // 获取用户信息
        wx.getSetting({
            success(res) {
                if (res.authSetting['scope.userInfo']) {
                    // 已经授权，可以直接调用 getUserInfo 获取头像昵称
                    wx.getUserInfo({
                        success: function(res) {
                            var userNick = res.userInfo.nickName; //用户昵称
                            var avataUrl = res.userInfo.avatarUrl; //用户头像地址
                            var gender = res.userInfo.gender; //用户性别
                            wx.setStorageSync('userNick', userNick);
                            wx.setStorageSync('avataUrl', avataUrl);
                            wx.setStorageSync('gender', gender == 1 ? "男" : "女");
                            if (that.data.code) {
                                wx.request({
                                    //url: that.data.ip2 + "/api/openid.php", //服务器的地址，现在微信小程序只支持https请求，所以调试的时候请勾选不校监安全域名
                                    url: that.data.ip1 + "/activeWeb/getOpenid", //服务器的地址，现在微信小程序只支持https请求，所以调试的时候请勾选不校监安全域名
                                    data: {
                                        code: that.data.code,
                                    },
                                    method: 'GET',
                                    header: {
                                        'content-type': 'application/json'
                                    },
                                    success: function(res) {
                                        console.log(res.data);
                                        wx.setStorageSync('openid', res.data);
                                        console.log(wx.getStorageSync('openid'));
                                        var userNick = wx.getStorageSync('userNick');
                                        var avaUrl = wx.getStorageSync('avataUrl');
                                        var gender = wx.getStorageSync('gender');
                                        var openid = wx.getStorageSync('openid')
                                        wx.request({
                                            url: that.data.ip1 + "/activeWeb/registUser",
                                            data: {
                                                openid: openid,
                                                userNick: userNick,
                                                avaUrl: avaUrl,
                                                gender: gender,
                                            },
                                            method: 'GET',
                                            header: {
                                                'content-type': 'application/json'
                                            },
                                            success: function(res) {
                                                that.setData({
                                                    loadModal: false
                                                })
                                                if (res.data == 1) {
                                                    wx.showModal({
                                                        title: '提示',
                                                        confirmText: '确定',
                                                        content: '注册成功'
                                                    })
                                                } else if (res.data == -1) {
                                                    wx.showModal({
                                                        title: '提示',
                                                        confirmText: '确定',
                                                        content: '您已经注册过,请勿重复注册'
                                                    })
                                                }
                                            }
                                        })
                                    }
                                })
                            }
                        }
                    })
                }
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
    onShareAppMessage: function(e) {
        var pwdid = 212122;
        return {
            title: '约个活动',
            desc: '我们一起来玩吧!',
            path: '/pages/home/home?pwdid=' + pwdid,
            imageUrl: '../../images/picturePoster-1.png'
        }
    }
})