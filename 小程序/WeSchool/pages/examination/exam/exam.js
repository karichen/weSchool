// pages/exam/exam.js
Page({
    data: {
        ip1: "127.0.0.1:8085",
        //ip: "127.0.0.1",
        scroll: 0,
        currentTab: 0,
        examList: [],
    },

    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(option) {
        this.setData({
            loadModal: true
        })
        var that = this;
        // 高度自适应
        var that = this;
        wx.getSystemInfo({
                success: function(res) {
                    that.setData({
                        clientHeight: res.windowHeight
                    });
                }
            })
            // 初始化题目
        this.initialization(option);
    },

    catchTouchMove: function(res) {
        return false
    },

    scrollSteps() {
        this.setData({
            scroll: this.data.scroll == 9 ? 0 : this.data.scroll + 1
        })
    },

    //开启缓存
    openLocationsercher: function() {
        var userAnswerList = new Array();
        var answerList = new Array();
        var problemList = new Array();
        var analysis = new Array();
        var select_a = new Array();
        var select_b = new Array();
        var select_c = new Array();
        var select_d = new Array();
        wx.setStorageSync('userAnswerList', userAnswerList);
        wx.setStorageSync('answerList', answerList);
        wx.setStorageSync('problemList', problemList);
        wx.setStorageSync('analysis', analysis);
        wx.setStorageSync('select_a', select_a);
        wx.setStorageSync('select_b', select_b);
        wx.setStorageSync('select_c', select_c);
        wx.setStorageSync('select_d', select_d);
        this.setData({
            userAnswerList: wx.getStorageSync('userAnswerList').reverse() || [], //若无储存则为空
            answerList: wx.getStorageSync('answerList').reverse() || [], //若无储存则为空
            problemList: wx.getStorageSync('problemList').reverse() || [], //若无储存则为空
            analysis: wx.getStorageSync('analysis').reverse() || [], //若无储存则为空
            select_a: wx.getStorageSync('select_a').reverse() || [], //若无储存则为空
            select_b: wx.getStorageSync('select_b').reverse() || [], //若无储存则为空
            select_c: wx.getStorageSync('select_c').reverse() || [], //若无储存则为空
            select_d: wx.getStorageSync('select_d').reverse() || [], //若无储存则为空
        })
    },

    // 点击选项保存答案
    radioChange: function(e) {
        var userAnswerList = wx.getStorageSync("userAnswerList");
        var answer = e.detail.value;
        var current = e.currentTarget.dataset.current;
        //缓存操作
        userAnswerList[current] = answer;
        wx.setStorageSync('userAnswerList', userAnswerList);
        var value = wx.getStorageSync("userAnswerList");
        var problemList = wx.getStorageSync("problemList");

    },

    //下一题   
    goNext: function(event) {
        var ctb = this.data.currentTab;
        ctb++;
        if (ctb == 10) {
            var count = 0;
            var userAnswerList = wx.getStorageSync('userAnswerList');

            for (var i = 0; i < userAnswerList.length; i++) {
                if (userAnswerList[i] == "无") {
                    count++;
                }
            }
            wx.showModal({
                content: '确定要提交作业嘛？(还有' + count + '题没有写)',
                cancelText: '取消',
                confirmText: '确定',
                success: res => {
                    var that = this;
                    if (res.confirm) {

                        wx.redirectTo({
                            url: '../../report/report'
                        })
                    }
                }
            })
        } else {
            this.setData({
                scroll: this.data.scroll == 9 ? 9 : this.data.scroll + 1,
                currentTab: ctb,
                answer: ""
            })
        }
    },

    // 上一题
    goPrevious: function() {
        var that = this;
        var ctb = this.data.currentTab;
        if (ctb == 0) {
            wx.showToast({
                title: '没有上一题了',
                icon: 'success',
                duration: 800
            })
        } else {
            ctb--;
            that.setData({
                scroll: that.data.scroll == 9 ? 9 : that.data.scroll + 1,
                currentTab: ctb,
            })
        }
    },

    swiperchange: function(e) {
        var that = this

        that.setData({
            'currentTab': e.detail.current
        })
    },
    // 初始化题目
    initialization: function(option) {
        this.setData({
            unit_kind: option.unit_kind
        })
        var exam_name = option.exam_name;
        wx.setNavigationBarTitle({
            title: exam_name,
        })
        var that = this;
        var unit_kind = that.data.unit_kind;
        this.openLocationsercher();
        wx.request({
            url: that.data.ip1 + "/activeWeb/queryexamination", //实际接口地址
            method: 'GET',
            data: {
                unit_kind: unit_kind
            },
            success: function(res) {
                //console.log(res.data);
                var answerList = new Array();
                var problemList = new Array();
                var analysis = new Array();
                var select_a = new Array();
                var select_b = new Array();
                var select_c = new Array();
                var select_d = new Array();

                //缓存操作
                var userAnswerList = new Array();
                for (var i = 0; i < 10; i++) {
                    answerList[i] = res.data[i]['answer'];
                    problemList[i] = res.data[i]['problem'];
                    userAnswerList[i] = "无";
                    select_a[i] = res.data[i]['select_a'];
                    select_b[i] = res.data[i]['select_b'];
                    select_c[i] = res.data[i]['select_c'];
                    select_d[i] = res.data[i]['select_d'];
                    analysis[i] = res.data[i]['analysis'];
                }
                wx.setStorageSync('answerList', answerList);
                wx.setStorageSync('problemList', problemList);
                wx.setStorageSync('userAnswerList', userAnswerList);
                wx.setStorageSync('analysis', analysis);
                wx.setStorageSync('select_a', select_a);
                wx.setStorageSync('select_b', select_b);
                wx.setStorageSync('select_c', select_c);
                wx.setStorageSync('select_d', select_d);
                var value = wx.getStorageSync("answerList");

                that.setData({
                    problemList: problemList,
                    examList: res.data,
                    select_a: select_a,
                    select_b: select_b,
                    select_c: select_c,
                    select_d: select_d,
                    analysis: analysis,
                    loadModal: false
                })

            }
        })
    },

})