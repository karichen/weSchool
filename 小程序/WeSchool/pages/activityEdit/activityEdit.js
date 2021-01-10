// pages/activityCreation/activityCreation.js
const app = getApp();
const date = new Date();
const years = [];
const months = [];
const days = [];
const hours = [];
const minutes = [];
//获取年
for (let i = 2018; i <= date.getFullYear() + 5; i++) {
    years.push("" + i);
}
//获取月份
for (let i = 1; i <= 12; i++) {
    if (i < 10) {
        i = "0" + i;
    }
    months.push("" + i);
}
//获取日期
for (let i = 1; i <= 31; i++) {
    if (i < 10) {
        i = "0" + i;
    }
    days.push("" + i);
}
//获取小时
for (let i = 0; i < 24; i++) {
    if (i < 10) {
        i = "0" + i;
    }
    hours.push("" + i);
}
//获取分钟
for (let i = 0; i < 60; i++) {
    if (i < 10) {
        i = "0" + i;
    }
    minutes.push("" + i);
}

Page({
    data: {
        show: false,
        major: null,
        isDisabled: false,
        StatusBar: app.globalData.StatusBar,
        CustomBar: app.globalData.CustomBar,
        imgList: [],
        addValue: "", //键入编辑的添加字段
        editsValue: "", //键入编辑的更改字段
        editsNumber: "", //键入编辑索引
        time: '',
        multiArray: [years, months, days, hours, minutes],
        multiIndex: [0, 9, 16, 10, 17],
        choose_year: '',
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
        //初始数据
        fields: [
            "姓名", "年龄"
        ],

    },

    //通过索引删除数组某个值
    RemoveValByIndex(arr, index) {
        arr.splice(index, 1);
    },

    //添加信息字段 
    addFields: function(event) {
        var that = this;
        that.showModal(event);
    },

    //获取编辑的添加字段
    addInput: function(e) {
        this.setData({
            addValue: e.detail.value
        })
    },

    //确认添加的编辑生效
    confirmAdd(e) {
        var that = this;
        var addValue = that.data.addValue; //获取键入的添加信息
        var addNumber = that.data.fields.length;
        that.data.fields[addNumber] = addValue; //改变数组
        that.setData({
            fields: that.data.fields //赋
        })
        that.setData({
            addValue: "" // editsValue清零
        })
        console.log(that.data.fields);
        that.hideModal(e);
    },


    //编辑/获取信息字段 
    editFields: function(event) {
        var that = this;
        const number = event.currentTarget.dataset.number;
        console.log("编辑索引" + number);
        that.setData({
            editsNumber: number
        })
        that.showModal(event);
    },


    //获取编辑的更改字段
    editsInput: function(e) {
        this.setData({
            editsValue: e.detail.value
        })
    },

    //确认更改的编辑生效
    confirmEdit(e) {
        var that = this;
        var editsValue = that.data.editsValue; //获取键入的更改信息
        var editsNumber = that.data.editsNumber; //获取正在编辑的索引
        that.data.fields[editsNumber] = editsValue; //改变数组
        that.setData({
            fields: that.data.fields //赋
        })
        that.setData({
            editsValue: "" // editsValue清零
        })
        console.log(that.data.fields);
        that.hideModal(e);
    },

    //显示Modal
    showModal(e) {
        this.setData({
            modalName: e.currentTarget.dataset.target
        })
    },

    //隐藏Modal
    hideModal(e) {
        this.setData({
            modalName: null
        })
    },

    //删除信息字段
    deleteFields: function(event) {
        var that = this;
        const number = event.currentTarget.dataset.number; //获取需要删除的索引
        that.RemoveValByIndex(that.data.fields, number); //改变数组
        that.setData({
            fields: that.data.fields //赋
        })
        console.log("删除" + number);
        console.log(that.data.fields);
    },

    ChooseImage() {
        wx.chooseImage({
            count: 4, //默认9
            sizeType: ['original', 'compressed'], //可以指定是原图还是压缩图，默认二者都有
            sourceType: ['album'], //从相册选择
            success: (res) => {
                if (this.data.imgList.length != 0) {
                    this.setData({
                        imgList: this.data.imgList.concat(res.tempFilePaths)
                    })
                } else {
                    this.setData({
                        imgList: res.tempFilePaths
                    })
                }
            }
        });
    },

    ViewImage(e) {
        wx.previewImage({
            urls: this.data.imgList,
            current: e.currentTarget.dataset.url
        });
    },
    DelImg(e) {
        wx.showModal({
            title: '同学',
            content: '确定要删除这张照片吗？',
            cancelText: '再看看',
            confirmText: '再见',
            success: res => {
                if (res.confirm) {
                    this.data.imgList.splice(e.currentTarget.dataset.index, 1);
                    this.setData({
                        imgList: this.data.imgList
                    })
                }
            }
        })
    },



    formdata: function(e) {
        var that = this;

        var active_major = e.detail.value.active_major == "" ? that.data.major : e.detail.value.active_major; //主题
        var active_starttime = that.data.starttime; //开始时间
        var active_endtime = that.data.endtime; //结束时间
        var active_place = e.detail.value.active_place; //地点
        var active_salary = e.detail.value.active_salary; //价钱
        var active_count = e.detail.value.active_count; //报名人数
        var activer_phone = e.detail.value.activer_phone; //电话
        var activer_QQ = e.detail.value.activer_QQ; //电话
        var active_remark = e.detail.value.active_remark; //备注
        var activer_openid = wx.getStorageSync('openid');


        console.log(active_major);
        console.log(active_starttime);
        console.log(active_endtime);
        console.log(active_place);
        console.log(active_salary);
        console.log(active_count);
        console.log(activer_phone);
        console.log(activer_QQ);
        console.log(active_remark);
        console.log(that.data.fields); //打印报名所需字段

        var flag1 = true;
        var flag2 = true;
        var flag3 = true;

        if (activer_openid == "") {
            wx.showModal({
                title: '提示',
                confirmText: '确定',
                content: '请先前往个人中心完成注册认证',
            })
            flag1 = false;
        }



        if (!(/(^[1-9]\d*$)/.test(active_count)) || active_count <= 0) {
            wx.showModal({
                title: '提示',
                confirmText: '确定',
                content: '在人数中请输入大于0的正整数',
            })
            flag2 = false;
        }


        if (active_salary != "") {
            if (!(/(^[0-9]\d*$)/.test(active_salary))) {
                wx.showModal({
                    title: '提示',
                    confirmText: '确定',
                    content: '在价格中请输入的正整数',
                })
                flag2 = false;
            }
        }


        if (active_major == "" || active_starttime == "" || active_endtime == "" || active_place == "" || active_count == "") {
            console.log("请检查是否有未填信息");
            wx.showModal({
                title: '提示',
                confirmText: '确定',
                content: '请检查是否有未填信息',
            })
            flag2 = false;
        };

        var imgList = that.data.imgList;


        if (imgList.length == 0) {
            wx.showModal({
                title: '提示',
                confirmText: '确定',
                content: '至少上传一张照片',
            })
            flag2 = false;
        }

        if (active_salary == "") {
            active_salary == "无"
        }

        if (activer_phone == "") {
            activer_phone == "无"
        }

        if (activer_QQ == "") {
            activer_QQ == "无"
        }


        if (active_remark == "") {
            active_remark == "无"
        }

        // 获取当前时间
        var date = new Date();
        //外国的月份都是从0开始的，所以+1
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        //1-9月用0补位
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        //1-9日用0补位
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        //获取当前时间 yyyy-MM-dd HH:mm:ss
        var currentdate = date.getFullYear() + month + strDate + +date.getHours() + date.getMinutes() + date.getSeconds();
        console.log(currentdate);

        if (that.data.starttimeJudge <= currentdate) {
            console.log("开始时间大于束时间，请进行修改");
            wx.showModal({
                title: '',
                confirmText: '确定',
                content: '开始时间不可早于当前时间，请进行修改',
            })
            flag3 = false;
        };

        if (that.data.starttimeJudge >= that.data.endtimeJudge) {
            console.log("开始时间大于结束时间，请进行修改");
            wx.showModal({
                title: '',
                confirmText: '确定',
                content: '开始时间不可晚于结束时间，请进行修改',
            })
            flag3 = false;
        };
        if (flag1 && flag2 && flag3) {
            wx.request({
                url: that.data.ip1 + "/activeWeb/updateActive",
                data: {
                    activer_openid: activer_openid,
                    active_major: active_major,
                    active_starttime: active_starttime,
                    active_endtime: active_endtime,
                    active_place: active_place,
                    active_salary: active_salary,
                    active_count: active_count,
                    activer_phone: activer_phone,
                    activer_QQ: activer_QQ,
                    active_remark: active_remark,
                    fields: JSON.stringify(that.data.fields),
                    pwdid: that.data.pwdid
                },
                method: 'GET',
                header: {
                    'content-type': 'application/json'
                },
                success: function(res) {
                    if (res.data != "error") {
                        that.setData({
                            pwdid: that.data.pwdid //储存该活动唯一标识
                        })
                        var successUp = 0; //成功
                        var failUp = 0; //失败
                        var length = that.data.imgList.length; //总数
                        var count = 0; //第几张
                        var imgList = that.data.imgList;
                        if (length != 0) {
                            that.uploadOneByOne(imgList, successUp, failUp, count, length);
                        } //递上传 

                    } else {
                        wx.showModal({
                            title: '提示',
                            confirmText: '确定',
                            content: '网络状态出现问题',
                        })
                    }
                }
            })
        }
    },


    backHome: function() {
        wx.reLaunch({
            url: '/pages/home/home'
        })
    },

    backMyAction: function() {
        wx.redirectTo({
            url: '/pages/myAction/myAction'
        })
    },


    uploadOneByOne(imgPaths, successUp, failUp, count, length) {
        var that = this;
        wx.uploadFile({
            url: that.data.ip1 + "/activeWeb/upload", //仅为示例，非真实的接口地址
            filePath: imgPaths[count],
            name: 'file', //示例，使用顺序给文件命名
            formData: {
                pwdid: that.data.pwdid,
                urlid: count + 1
            },
            success: function(e) {
                successUp++; //成功+1
            },
            fail: function(e) {
                failUp++; //失败+1
            },
            complete: function(e) {
                count++; //下一张
                if (count == length) {
                    //上传完毕，作一下提示
                    console.log('上传成功' + successUp + ',' + '失败' + failUp);
                    // wx.showToast({
                    //     title: '更新成功  ' +
                    //         '更新相册照片' + successUp,
                    //     icon: 'success',
                    //     duration: 2000
                    // })
                    that.setData({
                        modalName: "successModal1"
                    })
                } else {
                    //递归调用，上传下一张
                    that.uploadOneByOne(imgPaths, successUp, failUp, count, length);
                    console.log('正在上传第' + count + '张');
                }
            }
        })
    },

    //控制字段信息是否显示
    // showinfo() {
    //     var activites = this.data.activities;
    //     console.log(activites);
    //     this.setData({
    //         activites: activites,
    //     })
    //     this.setData({
    //         show: true,
    //     })
    // },



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

        //设置默认的年份
        if (options.major) {
            this.setData({
                choose_year: this.data.multiArray[0][0],
                major: options.major,
                isDisabled: true
            })
        } else {
            this.setData({
                choose_year: this.data.multiArray[0][0],
            })
        }

        //如果是更改原有活动
        if (options.pwdid) {
            this.setData({
                pwdid: options.pwdid,
            })
            wx.request({
                url: that.data.ip1 + "/activeWeb/queryActive",
                data: {
                    pwdid: options.pwdid
                },
                method: 'GET',
                header: {
                    'content-type': 'application/json'
                },
                success: function(res) {


                    //回退filed信息
                    // var activites = that.data.activities;
                    // var act = res.data.act.replace('[', '').replace(']', '').replace(/"/g, '');
                    // var acts = new Array();
                    // acts = act.split(",");
                    // console.log(acts);
                    // for (var i = 0; i < acts.length; i++) {
                    //     for (var j = 0; j < activites.length; j++) {
                    //         if (acts[i] == activites[j].filed) {
                    //             activites[j].select = true;
                    //             that.setData({
                    //                 activites: activites
                    //             })
                    //         }

                    //     }
                    // }

                    // console.log(activites);

                    //回退表单数据
                    that.setData({
                        activeItem: res.data,
                        major: res.data.major,
                        starttime: res.data.starttime,
                        endtime: res.data.endtime,
                        place: res.data.place,
                        salary: res.data.salary,
                        count: res.data.count,
                        phone: res.data.qriginator.phone,
                        QQ: res.data.qriginator.qq,
                        remark: res.data.remark,
                        fields: JSON.parse(res.data.fields)
                    })

                    //回退图片
                    var imgList = that.data.imgList;
                    if (res.data.imgUrl1 != "http:chk") imgList[0] = res.data.imgUrl1;
                    if (res.data.imgUrl2 != "http:chk") imgList[1] = res.data.imgUrl2;
                    if (res.data.imgUrl3 != "http:chk") imgList[2] = res.data.imgUrl3;
                    if (res.data.imgUrl4 != "http:chk") imgList[3] = res.data.imgUrl4;
                    that.setData({
                        imgList: imgList
                    })

                }
            })



        }

    },


    //获取时间日期
    startbindMultiPickerChange: function(e) {
        // console.log('picker发送选择改变，携带值为', e.detail.value)
        this.setData({
            multiIndex: e.detail.value
        })
        const index = this.data.multiIndex;
        const year = this.data.multiArray[0][index[0]];
        const month = this.data.multiArray[1][index[1]];
        const day = this.data.multiArray[2][index[2]];
        const hour = this.data.multiArray[3][index[3]];
        const minute = this.data.multiArray[4][index[4]];
        // console.log(`${year}-${month}-${day}-${hour}-${minute}`);
        this.setData({
                starttime: year + '-' + month + '-' + day + ' ' + hour + ':' + minute
            })
            // console.log(this.data.time);
    },
    //获取时间日期
    endbindMultiPickerChange: function(e) {
        // console.log('picker发送选择改变，携带值为', e.detail.value)
        this.setData({
            multiIndex: e.detail.value
        })
        const index = this.data.multiIndex;
        const year = this.data.multiArray[0][index[0]];
        const month = this.data.multiArray[1][index[1]];
        const day = this.data.multiArray[2][index[2]];
        const hour = this.data.multiArray[3][index[3]];
        const minute = this.data.multiArray[4][index[4]];
        // console.log(`${year}-${month}-${day}-${hour}-${minute}`);
        this.setData({
                endtime: year + '-' + month + '-' + day + ' ' + hour + ':' + minute
            })
            // console.log(this.data.time);
    },
    //监听picker的滚动事件
    bindMultiPickerColumnChange: function(e) {
        //获取年份
        if (e.detail.column == 0) {
            let choose_year = this.data.multiArray[e.detail.column][e.detail.value];
            console.log(choose_year);
            this.setData({
                choose_year
            })
        }
        //console.log('修改的列为', e.detail.column, '，值为', e.detail.value);
        if (e.detail.column == 1) {
            let num = parseInt(this.data.multiArray[e.detail.column][e.detail.value]);
            let temp = [];
            if (num == 1 || num == 3 || num == 5 || num == 7 || num == 8 || num == 10 || num == 12) { //判断31天的月份
                for (let i = 1; i <= 31; i++) {
                    if (i < 10) {
                        i = "0" + i;
                    }
                    temp.push("" + i);
                }
                this.setData({
                    ['multiArray[2]']: temp
                });
            } else if (num == 4 || num == 6 || num == 9 || num == 11) { //判断30天的月份
                for (let i = 1; i <= 30; i++) {
                    if (i < 10) {
                        i = "0" + i;
                    }
                    temp.push("" + i);
                }
                this.setData({
                    ['multiArray[2]']: temp
                });
            } else if (num == 2) { //判断2月份天数
                let year = parseInt(this.data.choose_year);
                console.log(year);
                if (((year % 400 == 0) || (year % 100 != 0)) && (year % 4 == 0)) {
                    for (let i = 1; i <= 29; i++) {
                        if (i < 10) {
                            i = "0" + i;
                        }
                        temp.push("" + i);
                    }
                    this.setData({
                        ['multiArray[2]']: temp
                    });
                } else {
                    for (let i = 1; i <= 28; i++) {
                        if (i < 10) {
                            i = "0" + i;
                        }
                        temp.push("" + i);
                    }
                    this.setData({
                        ['multiArray[2]']: temp
                    });
                }
            }
            console.log(this.data.multiArray[2]);
        }
        var data = {
            multiArray: this.data.multiArray,
            multiIndex: this.data.multiIndex
        };
        data.multiIndex[e.detail.column] = e.detail.value;
        this.setData(data);
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