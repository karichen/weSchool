// pages/handbook/handbook.js
Page({

    /**
     * 页面的初始数据              current
     * harmfulwaste 有害垃圾         0
     * kitchenwaste 厨余垃圾         1 
     * otherwaste 其他垃圾           2
     * recyclablewaste 可回收垃圾    3
     */
    data: {
        current: '0',
        type: ["kitchenwaste", "otherwaste", "recyclablewaste", "harmfulwaste"], //便于动态加载数据
        star: [0, 0, 0, 0],
        length: 8,
        harmfulwaste: [],
        kitchenwaste: [],
        otherwaste: [],
        recyclablewaste: [],
        topNum: '0',
        ip: "www.petchk.cn",
    },

    // 跳转到search页面
    goSearch: function(e) {
        wx.redirectTo({
            url: '/pages/search/search'
        })
    },

    // 换页
    tabNav: function(e) {
        if (e.currentTarget.dataset.current == this.data.current) {
            return false;
        } else {
            this.setData({
                current: e.currentTarget.dataset.current,
                topNum: 0,
            })
        }
    },

    //  请求数据   url: "http://localhost/refuseClassification/queryData.php?kind=" + kind,
    queryData: function(kind, star, length) {
        var that = this;
        //导航栏加载动画
        wx.showNavigationBarLoading();
        wx.request({
            url: "https://" + that.data.ip + "/api/queryData.php?kind=" + kind, //实际接口地址
            data: {
                star: that.data.star[that.data.current],
                length: length,
            },
            method: 'POST',
            header: {
                'content-type': 'application/x-www-form-urlencoded'
            },
            success: function(res) {
                var totalData = {};
                var old = that.data[kind];
                var ne = res.data;
                totalData = old.concat(ne);
                that.setData({
                    [kind]: totalData,
                })
                console.log(totalData);
                that.data.star[that.data.current] += that.data.length;
                // 结束导航栏加载动画
                wx.hideNavigationBarLoading();
            }
        })
    },

    //下拉加载
    lower: function() {
        this.queryData(this.data.type[this.data.current], this.data.star[0], this.data.length);
    },

    onLoad: function(options) {
        this.queryData(this.data.type[0], this.data.star[1], this.data.length);
        this.queryData(this.data.type[1], this.data.star[0], this.data.length);
        this.queryData(this.data.type[2], this.data.star[2], this.data.length);
        this.queryData(this.data.type[3], this.data.star[3], this.data.length);
    },
    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function() {},
    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function() {},
    /**
     * 生命周期函数--监听页面隐藏
     */
    onHide: function() {},
    /**
     * 生命周期函数--监听页面卸载
     */
    onUnload: function() {},
    /**
     * 页面相关事件处理函数--监听用户下拉动作
     */
    onPullDownRefresh: function() {},
    /**
     * 页面上拉触底事件的处理函数
     */
    onReachBottom: function() {},
    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function() {}
})