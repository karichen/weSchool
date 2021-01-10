// pages/searchResult/searchResult.js
Page({
    /**
     * 页面的初始数据
     */
    data: {
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
        TabCur: 0,
        scrollLeft: 0,
    },

    tabSelect(e) {
        this.setData({
            TabCur: e.currentTarget.dataset.id,
            scrollLeft: (e.currentTarget.dataset.id - 1) * 60
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
        var content = options.content;
        var that = this;
        that.setData({
            content: content
        })
        wx.request({
            url: that.data.ip1 + "/activeWeb/queryAllContentActive",
            method: 'GET',
            header: {
                'content-type': 'application/json'
            },
            data: {
                content: options.content
            },
            success: function(res) {
                for (var i = 0; i < res.data.length; i++) {
                    res.data[i].enrollment = parseInt(res.data[i].enrollment);
                    res.data[i].count = parseInt(res.data[i].count);
                }
                that.setData({
                    inProgress: res.data
                })
                console.log(that.data.inProgress);
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
    onShareAppMessage: function() {

    }
})