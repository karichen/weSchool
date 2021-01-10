const app = getApp();
Page({
    data: {
        ColorList: app.globalData.ColorList,
        listUnits: [{
                name: "初识C语言",
                id: 1
            },
            {
                name: "C源程序与数据类型",
                id: 2
            },
            {
                name: "运算符与表达式",
                id: 3
            },
            {
                name: "程序流程控制",
                id: 4
            },
        ]
    },
    //视频学习详情页
    toDetail: function(e) {
        var that = this;
        var video_name = e.currentTarget.dataset.name;
        var id = e.currentTarget.dataset.id;
        wx.navigateTo({
            url: "/pages/video/videoDetail/videoDetail?id=" + id + '&video_name=' + video_name,
        });
    },

    // 跳转到exam
    goExam: function(e) {
        wx.redirectTo({
            url: '/pages/examination/examination'
        })
    },
})