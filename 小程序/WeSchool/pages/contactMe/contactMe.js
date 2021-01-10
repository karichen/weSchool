// pages/contactMe/contactMe.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
        qq: "1580776594",
        phone: "19825310076"
    },

    copyBtnQQ: function(e) {
        var that = this;
        wx.setClipboardData({
            data: that.data.qq,
            success: function(res) {
                wx.showToast({
                    title: '复制成功',
                });
            }
        });
    },

    copyBtnPhone: function(e) {
        var that = this;
        wx.setClipboardData({
            data: that.data.phone,
            success: function(res) {
                wx.showToast({
                    title: '复制成功',
                });
            }
        });
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {

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