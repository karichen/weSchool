// pages/report/report.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        right: 0,
        error: 0,
        hide: [],
        score: 0,
        ten: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        this.setData({
            loadModal: true
        })
        var that = this;
        var userAnswerList = wx.getStorageSync("userAnswerList");
        var answerList = wx.getStorageSync("answerList");
        var problemList = wx.getStorageSync("problemList");
        var select_a = wx.getStorageSync("select_a");
        var select_b = wx.getStorageSync("select_b");
        var select_c = wx.getStorageSync("select_c");
        var select_d = wx.getStorageSync("select_d");
        var analysis = wx.getStorageSync("analysis");
        var right = this.data.right;
        var error = this.data.error;
        var resultset = new Array();
        var hide = new Array();

        for (var i = 0; i < 10; i++) {
            hide[i] = false;
            if (userAnswerList[i] == answerList[i]) {
                right++
                resultset[i] = "正确";
            } else {
                error++;
                resultset[i] = "错误";
            }
        }

        var score = right * 10;
        this.setData({
            userAnswerList: userAnswerList,
            answerList: answerList,
            right: right,
            error: error,
            problemList: problemList,
            resultset: resultset,
            score: score,
            select_a: select_a,
            select_b: select_b,
            select_c: select_c,
            select_d,
            select_d,
            analysis: analysis,
            loadModal: false
        })
    },


    show: function(e) {
        var current = e.currentTarget.dataset.current;
        var hide = this.data.hide;
        if (hide[current]) {
            hide[current] = false;
        } else {
            hide[current] = true;
        }
        this.setData({
            hide: hide,
        })
    },
})