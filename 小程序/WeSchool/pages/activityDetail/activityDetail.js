// pages/activityDetail/activityDetail.js
Page({

    /**
     * 页面的初始数据
     */
    data: {
        ip1: "127.0.0.1:8085",
        //ip1: "yghd127.0.0.1:8085",
        DotStyle: true,
        cardCur: 0,
        imgList: [{
            id: 0,
            type: 'image',
            url: "../../images/picturePoster-1.png"
        }, {
            id: 1,
            type: 'image',
            url: "../../images/picturePoster-2.jpg"
        }, {
            id: 2,
            type: 'image',
            url: "../../images/picturePoster-3.jpg"
        }, {
            id: 3,
            type: 'image',
            url: "../../images/picturePoster-5.png"
        }],

        major: "2333",
        starttime: "2333",
        endtime: "2333",
        place: "2333",
        remark: "",
        enrollment: 0,
        count: 10,
        QQ: "2333",
        phone: "2333",
        pwdid: 1
    },

    backHome: function() {
        wx.reLaunch({
            url: '/pages/home/home'
        })
    },

    skip: function() {
        var that = this;
        var pwdid = that.data.pwdid;
        wx.redirectTo({
            url: '/pages/signUp/signUp?pwdid=' + pwdid
        })
    },

    copyBtnPhone: function(e) {
        var that = this;
        wx.setClipboardData({
            data: that.data.phone,
            success: function(res) {
                wx.showToast({
                    title: '手机号复制成功',
                });
            }
        });
    },

    copyBtnQQ: function(e) {
        var that = this;
        wx.setClipboardData({
            data: that.data.QQ,
            success: function(res) {
                wx.showToast({
                    title: 'QQ号复制成功',
                });
            }
        });
    },


    /**
     * 生命周期函数--监听页面加载
     */
    onLoad: function(options) {
        //获取页面跳转来的pwdid
        var that = this;

        that.setData({
            pwdid: options.pwdid
        })

        // var pwdid = "X8S197P0Cp";
        // that.setData({
        //     pwdid: pwdid
        // })
        wx.request({
            url: that.data.ip1 + "/activeWeb/queryActive",
            data: {
                pwdid: that.data.pwdid
            },
            method: 'GET',
            header: {
                'content-type': 'application/json'
            },
            success: function(res) {
                console.log(res.data);

                //回退表单数据
                that.setData({
                        major: res.data.major,
                        starttime: res.data.starttime,
                        endtime: res.data.endtime,
                        place: res.data.place,
                        salary: res.data.salary,
                        count: parseInt(res.data.count),
                        phone: res.data.qriginator.phone,
                        QQ: res.data.qriginator.qq,
                        remark: res.data.remark,
                        enrollment: parseInt(res.data.enrollment)
                    })
                    //回退图片
                var imgList = that.data.imgList;
                if (res.data.imgUrl1 != "http:chk") imgList[0].url = res.data.imgUrl1;
                else imgList[0].url = "../../images/picturePoster-1.png";
                if (res.data.imgUrl2 != "http:chk") imgList[1].url = res.data.imgUrl2;
                else
                    imgList[1].url = "../../images/picturePoster-7.png";
                if (res.data.imgUrl3 != "http:chk") imgList[2].url = res.data.imgUrl3;
                else
                    imgList[2].url = "../../images/picturePoster-8.png";
                if (res.data.imgUrl4 != "http:chk") imgList[3].url = res.data.imgUrl4;
                else
                    imgList[3].url = "../../images/picturePoster-9.png";
                that.setData({
                    imgList: imgList
                })
            },
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
        var that = this;
        var pwdid = this.data.pwdid;
        var major = that.data.major;
        return {
            title: '邀请你来参加' + major,
            desc: '我们一起来玩吧!',
            path: '/pages/activityDetail/activityDetail?pwdid=' + pwdid,
            imageUrl: '../../images/picturePoster-1.png'
        }
    }
})