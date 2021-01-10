// pages/prize/prize.js
const app = getApp()
Page({

    /**
     * 页面的初始数据
     */
    data: {
        img: "../../images/canvas-1.png",
        qq: "../../images/QQ.png",
        qqkj: "../../images/QQkj.png",
        code: "E7AI98",
        inputValue: "",
        maskHidden: false,
        // 获取用户信息
        pwdid: 23333,
        name: "",
        touxiang: "",
        major: "未知活动",
        starttime: "?-?-?",
        endtime: "?-?-?"
    },

    onLoad: function(options) {
        var that = this;
        that.setData({
                pwdid: options.pwdid,
                starttime: options.starttime,
                endtime: options.endtime,
                place: options.place,
                major: options.major,
                isCreate: options.isCreate
            })
            //获取用户信息===============================================
        wx.getUserInfo({
                success: res => {
                        console.log(res.userInfo, "huoqudao le ");
                        //获取用户名
                        this.setData({
                                name: res.userInfo.nickName,
                            })
                            //获取用户头像    图片必须下载--------------------------------------------
                        wx.downloadFile({
                            url: res.userInfo.avatarUrl, //仅为示例，并非真实的资源
                            success: function(res) {
                                // 只要服务器有响应数据，就会把响应内容写入文件并进入 success 回调，业务需要自行判断是否下载到了想要的内容
                                if (res.statusCode === 200) {
                                    console.log(res, "下载到了头像");
                                    that.setData({
                                        touxiang: res.tempFilePath
                                    })
                                }

                            }
                        })
                    }
                    //获取用户头像         图片必须下载--------------------------------------------
            })
            //获取用户信息===============================================
    },


    backHome: function() {
        wx.reLaunch({
            url: '/pages/home/home'
        })
    },


    //将canvas转换为图片保存到本地，然后将图片路径传给image图片的src
    createNewImg: function() {
        var that = this;
        var major = that.data.major; //sscdy获取
        if (major.length >= 6) {
            major = major.substr(0, 7);
            major += "..."
        }
        //创建canvas画布==========================================
        var context = wx.createCanvasContext('mycanvas');
        //context.fillStyle("#ffe200")
        context.setFillStyle("#FEC900"); //填充背景颜色
        context.fillRect(0, 0, 375, 667); //设置canvas画布大小

        //创建canvas画布------------------------------------------------------


        //将模板图片绘制到canvas,在开发工具中drawImage()函数有问题，不显示图片
        //不知道是什么原因，手机环境能正常显示
        var path = "/images/canvas-1.png";
        var path1 = that.data.touxiang;
        var path3 = "/images/images3.png";
        var path4 = "/images/images2.png";
        var path5 = "/images/images4.png";
        var path6 = "/images/QR.png";
        //将图片路径引入
        console.log(path1, "用户头像");
        context.drawImage(path, 0, 0, 375, 183); //将path画到画布上面

        //绘制名字
        var name = that.data.name;
        context.setFontSize(35);
        context.setFillStyle('#333333');
        context.setTextAlign('center');
        context.fillText(name, 185, 340);
        context.stroke();


        //绘制一起吃面标语
        context.setFontSize(20);
        context.setFillStyle('#333333');
        context.setTextAlign('center');
        context.fillText("邀请你一起参加活动", 185, 370);
        context.stroke();


        //绘制验证码背景
        context.drawImage(path3, 48, 390, 280, 84);

        //绘制code码
        context.setFontSize(35);
        context.setFillStyle('#fff');
        context.setTextAlign('center');
        context.fillText(major, 185, 435);
        context.stroke();

        //绘制左下角文字背景图
        context.drawImage(path4, 25, 520, 184, 82);

        context.setFontSize(12);
        context.setFillStyle('#333');
        context.setTextAlign('left');
        context.fillText("进入小程序找到所有的活动", 35, 540);
        context.stroke();

        context.setFontSize(12);
        context.setFillStyle('#333');
        context.setTextAlign('left');
        context.fillText("赶紧去寻找自己的知己", 35, 560);
        context.stroke();

        context.setFontSize(12);
        context.setFillStyle('#333');
        context.setTextAlign('left');
        context.fillText("快来参加吧", 35, 580);
        context.stroke();

        //绘制右下角扫码提示语
        context.drawImage(path5, 248, 578, 90, 25);

        //二维码
        context.drawImage(path6, 248, 480, 90, 90);

        //绘制头像
        context.arc(186, 246, 50, 0, 2 * Math.PI) //画出圆

        context.strokeStyle = "#ffe200"; //设置边框颜色
        context.clip(); //裁剪上面的圆形
        context.drawImage(path1, 136, 196, 100, 100); // 在刚刚裁剪的园上画图
        context.draw();


        //将生成好的图片保存到本地，需要延迟一会，绘制期间耗时   setTimeout
        setTimeout(function() {
            wx.canvasToTempFilePath({
                canvasId: 'mycanvas',
                success: function(res) {
                    var tempFilePath = res.tempFilePath;
                    that.setData({
                        imagePath: tempFilePath,
                        canvasHidden: true
                    });
                },
                fail: function(res) {
                    console.log(res);
                }
            });
        }, 200);


    },


    //点击保存到相册=============================================================================
    baocun: function() {
        var that = this
        wx.saveImageToPhotosAlbum({
            filePath: that.data.imagePath,
            success(res) {
                wx.showModal({
                    content: '图片已保存到相册，赶紧晒一下吧~',
                    showCancel: false,
                    confirmText: '好的',
                    confirmColor: '#333',
                    success: function(res) {
                        if (res.confirm) {
                            console.log('用户点击确定');
                            /* 该隐藏的隐藏 */
                            that.setData({
                                maskHidden: false
                            })
                        }
                    },
                    fail: function(res) {
                        console.log(11111)
                    }
                })
            }
        })
    },
    //点击保存到相册=============================================================================

    //点击生成  
    formSubmit: function(e) {
        var that = this;
        this.setData({
            maskHidden: false
        });
        //加载
        wx.showToast({
            title: '装逼中...',
            icon: 'loading',
            duration: 1000
        });

        setTimeout(function() {
            wx.hideToast()
            that.createNewImg();
            that.setData({
                maskHidden: true
            });
        }, 1000)

    },

    /**
     * 生命周期函数--监听页面显示
     */
    onShow: function() {
        var that = this;
        wx.getUserInfo({
            success: res => {
                console.log(res.userInfo, "huoqudao le ")
                this.setData({
                    name: res.userInfo.nickName,
                })
                wx.downloadFile({
                    url: res.userInfo.avatarUrl, //仅为示例，并非真实的资源
                    success: function(res) {
                        // 只要服务器有响应数据，就会把响应内容写入文件并进入 success 回调，业务需要自行判断是否下载到了想要的内容
                        if (res.statusCode === 200) {
                            console.log(res, "reererererer")
                            that.setData({
                                touxiang: res.tempFilePath
                            })
                        }
                    }
                })
            }
        })
    },

    /**
     * 用户点击右上角分享
     */
    onShareAppMessage: function(res) {
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