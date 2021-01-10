const app = getApp();
Page({
    data: {
        ColorList: app.globalData.ColorList,
        ip: "127.0.0.1",
        listUnits: [{
                name: "初识C语言",
                unit: 1
            },
            {
                name: "C源程序与数据类型",
                unit: 2
            },
            {
                name: "运算符与表达式",
                unit: 3
            },
            {
                name: "程序流程控制",
                unit: 4
            },
            {
                name: "函数的基本知识",
                unit: 5
            },
            {
                name: "C语言数组",
                unit: 6
            },
            {
                name: "指针及其应用",
                unit: 7
            },
            {
                name: "预编译与多文件",
                unit: 8
            },
            {
                name: "结构、联合、枚举",
                unit: 9
            },
            {
                name: "C语言文件",
                unit: 10
            },
        ]
    },

    //点击跳转
    goto: function(event) {
        var dataset = event.currentTarget.dataset;
        var exam_name = event.currentTarget.dataset.name;
        var unit_kind = parseInt(dataset.unit);
        wx.navigateTo({
            url: '/pages/examination/exam/exam?unit_kind=' + unit_kind + '&exam_name=' + exam_name,
        })
    },
})