// pages/handbook/handbook.js
//生成随机颜色的弹幕
function getRandomColor() {
    let rgb = [];
    for (let i = 0; i < 3; i++) {
        let color = (Math.floor(Math.random() * 256)).toString(16);
        color = color.length == 1 ? ('0' + color) : color;
        rgb.push(color)
    }
    return "#" + rgb.join("");
}

Page({
    data: {
        showGoTop: false,
        scrollLeft: 0,
        current: 0,
        length: [5, 5],
        isLoad: [false, false],
        max1: 0,
        max2: 0,
        //ip: "127.0.0.1",
        ip1: "127.0.0.1:8085",
        danmulist: [{
            text: "这是第一条弹幕",
            time: 1,
            color: "#f00"
        }, {
            text: "这是第二条弹幕",
            time: 6,
            color: "#0f0"
        }, {
            text: "这是第三条弹幕",
            time: 3,
            color: "#00f"
        }],
    },


    // 上拉加载
    onReachBottom() {
        var that = this;
        setTimeout(function() {
            var current = that.data.current;
            var length = that.data.length;
            var isLoad = that.data.isLoad;

            if (current == 0) {
                if (length[that.data.current] + 5 <= that.data.max1) {
                    length[that.data.current] = length[that.data.current] + 5;
                    that.setData({
                        length: length,
                    })
                } else {
                    isLoad[that.data.current] = true;
                    that.setData({
                        isLoad: isLoad,
                    })
                }
            } else {
                if (length[that.data.current] + 5 <= that.data.max2) {
                    length[that.data.current] = length[that.data.current] + 5;
                    that.setData({
                        length: length,
                    })
                } else {
                    isLoad[that.data.current] = true;
                    that.setData({
                        isLoad: isLoad,
                    })
                }
            }


            console.log(length[that.current]);
        }, 800);
    },


    // 获取滚动条当前位置，并显隐按钮
    onPageScroll: function(e) {
        if (e.scrollTop > 200) {
            this.setData({
                showGoTop: true
            })
        } else {
            this.setData({
                showGoTop: false
            })
        }
    },
    // 回到顶部
    goTop: function(e) {
        if (wx.pageScrollTo) {
            wx.pageScrollTo({
                scrollTop: 0
            })
        } else {
            wx.showModal({
                title: '提示',
                content: '当前微信版本过低，无法使用该功能，请升级到最新微信版本后重试。'
            })
        }
    },


    //获取精准时间
    getCurrentTime: function() {
        //创建对象  
        var date = new Date();
        //获取年份  
        var y = date.getFullYear();
        //获取月份  返回0-11     
        var m = date.getMonth() + 1;
        // 获取日   
        var d = date.getDate();
        //获取星期几  返回0-6   (0=星期天)   
        var w = date.getDay();
        //星期几
        var ww = ' 星期' + '日一二三四五六'.charAt(date.getDay());
        //时
        var h = date.getHours();
        //分  
        var minute = date.getMinutes()
            //秒 
        var s = date.getSeconds();
        //毫秒
        var sss = date.getMilliseconds();

        if (m < 10) {
            m = "0" + m;
        }
        if (d < 10) {
            d = "0" + d;
        }
        if (h < 10) {
            h = "0" + h;
        }
        if (minute < 10) {
            minute = "0" + minute;
        }
        if (s < 10) {
            s = "0" + s;
        }

        if (sss < 10) {
            sss = "00" + sss;
        } else if (sss < 100) {
            sss = "0" + sss;
        }
        return y + "-" + m + "-" + d + " " + h + ":" + minute + ":" + s;
    },


    // 预习视频发送弹幕
    psendDanmu: function() {
        var that = this;
        var id = that.data.id;
        var nowtime = Date.now(); //获取当前时间
        var time = (nowtime - this.data.starttime) //计算发弹幕时候的时间节点
        var color = getRandomColor(); //设置弹幕颜色
        var videosrc = that.data.videoInfo[0]['previewVideo']['src']; //获取该弹幕实际视频网址
        var useropenid = wx.getStorageSync('openid');
        var imgUrl = wx.getStorageSync('avataUrl'); //获取用户头像
        var datetime = that.getCurrentTime(); //获取当前精准时间
        var nick = wx.getStorageSync('userNick'); //获取用户昵称
        var kind = "preview";

        if (useropenid == "") {
            wx.showModal({
                title: '同学您好',
                content: '请去个人中心一键注册',
                success: function(res) {
                    if (res.confirm) {
                        wx.switchTab({
                            url: '/pages/mine/mine'
                        })
                    }
                }
            })
        } else {
            if (this.data.danmu == "" || this.data.danmu == undefined) {
                wx.showModal({
                    content: '网络开了个小差',
                    success: function(res) {

                    }
                })
            } else {

                this.videoContext.sendDanmu({
                    text: this.data.danmu,
                    color: color
                }); //本地视觉展示发送弹幕

                wx.request({
                    url: that.data.ip1 + "/activeWeb/adddanmu", //服务器的地址，现在微信小程序只支持https请求，所以调试的时候请勾选不校监安全域名
                    data: {
                        text: this.data.danmu,
                        color: color,
                        timed: time,
                        videosrc: videosrc,
                        useropenid: useropenid,
                        imgUrl: imgUrl,
                        datetime: datetime,
                        nick: nick,
                        id: id,
                        kind: kind
                    },
                    method: 'GET',
                    header: {
                        'content-type': 'application/json'
                    },
                    success: function(res) {
                        var flag = res.data;
                        if (flag == 1) { //1代表数据插入成功
                            wx.showToast({
                                title: '弹幕发送成功',
                                duration: 2000,
                                icon: 'success'
                            });
                            //本地新渲染弹幕列表
                            var jsondata = new Object();
                            jsondata.text = that.data.danmu;
                            jsondata.nick = nick;
                            jsondata.imgUrl = imgUrl;
                            jsondata['color'] = color;
                            jsondata.datetime = parseInt(datetime);
                            that.data.pjsondata.push(jsondata);
                            that.setData({
                                pjsondata: that.data.pjsondata
                            })
                        } else {
                            wx.showToast({
                                title: '网络异常请稍后再试',
                                duration: 2000,
                                icon: 'loading'
                            });
                        }
                    }
                })

            }
        }
    },



    // 复习视频发送弹幕
    rsendDanmu: function() {
        var that = this;
        var id = that.data.id;
        var nowtime = Date.now(); //获取当前时间
        var time = (nowtime - this.data.starttime) / 1000;
        //计算弹幕时间节点
        var color = getRandomColor(); //设置弹幕颜色
        var videosrc = that.data.videoInfo[0]['reviewVideo']['src']; //获取该弹幕实际视频网址
        var useropenid = wx.getStorageSync('openid');
        var imgUrl = wx.getStorageSync('avataUrl'); //获取用户头像
        var datetime = that.getCurrentTime(); //获取当前精准时间
        var nick = wx.getStorageSync('userNick'); //获取用户昵称
        var kind = "review";

        if (useropenid == "") {
            wx.showToast({
                title: '请完成班级认证',
                duration: 2000,
                icon: 'loading'
            });
        } else {
            if (this.data.danmu == "" || this.data.danmu == undefined) {
                wx.showToast({
                    title: '网络开了个小差',
                    duration: 800,
                    icon: 'loading'
                });
            } else {


                this.videoContext.sendDanmu({
                    text: this.data.danmu,
                    color: color
                }); //本地视觉展示发送弹幕
                wx.request({
                    url: that.data.ip1 + "/activeWeb/adddanmu",
                    data: {
                        text: this.data.danmu,
                        color: color,
                        timed: time,
                        videosrc: videosrc,
                        useropenid: useropenid,
                        imgUrl: imgUrl,
                        datetime: datetime,
                        nick: nick,
                        id: id,
                        kind: kind
                    },
                    method: 'GET',
                    header: {
                        'content-type': 'application/json'
                    },
                    success: function(res) {
                        var flag = res.data;
                        if (flag == 1) { //1代表数据插入成功
                            wx.showToast({
                                title: '弹幕发送成功',
                                duration: 2000,
                                icon: 'success'
                            });
                            //本地新渲染弹幕列表
                            var jsondata = new Object();
                            jsondata.text = that.data.danmu;
                            jsondata.nick = nick;
                            jsondata.imgUrl = imgUrl;
                            jsondata['color'] = color;
                            jsondata.datetime = parseInt(datetime);
                            that.data.rjsondata.push(jsondata);
                            that.setData({
                                rjsondata: that.data.rjsondata
                            })
                        } else {
                            wx.showToast({
                                title: '网络异常请稍后再试',
                                duration: 2000,
                                icon: 'loading'
                            });
                        }
                    }
                })
            }
        }
    },

    getInput: function(e) {

        this.setData({
            danmu: e.detail.value
        });
    },
    videoErrorCallback: function(e) {

    },




    // 点击tab切换
    swichNav: function(e) {
        var that = this;
        var current = e.currentTarget.dataset.current;

        that.setData({
            currentTab: e.target.dataset.current,
            current: current
        })

    },

    //渲染预习视频的弹幕列表
    preturndanmu: function() {
        var that = this;
        wx.request({
            url: that.data.ip1 + "/activeWeb/returndanmu", //实际接口地址
            headers: {
                'Content-Type': 'application/json'
            },
            data: {
                videosrc: that.data.videoInfo[0]['previewVideo']['src']
                    //that.data.videoInfo[0]['previewVideo']['src']
            },
            success: function(res) {
                //获取到的json数据
                var jsondata = res.data;
                console.log(jsondata);
                /*将获取到的json数据组装成danmulist的格式
                  转换time值由字符型变为为数值型
                  随机获取color值*/
                for (var i = 0; i < jsondata.length; i++) {
                    jsondata[i].time = parseInt(jsondata[i].timed);
                    jsondata[i]['color'] = jsondata[i].color;
                    console.log(jsondata[i].timed);
                    console.log(jsondata[i]['color']);
                }

                that.setData({
                    pjsondata: jsondata,
                    max1: jsondata.length,
                });
            },
        })
    },

    //渲染复习视频的弹幕列表
    rreturndanmu: function() {
        var that = this;
        wx.request({
            url: that.data.ip1 + "/activeWeb/returndanmu", //实际接口地址
            headers: {
                'Content-Type': 'application/json'
            },
            data: {
                videosrc: that.data.videoInfo[0]['reviewVideo']['src']
            },
            success: function(res) {
                //获取到的json数据
                var jsondata = res.data;
                /*将获取到的json数据组装成danmulist的格式
                  转换time值由字符型变为为数值型
                  随机获取color值*/
                for (var i = 0; i < jsondata.length; i++) {
                    jsondata[i].time = parseInt(jsondata[i].timed);
                    jsondata[i]['color'] = jsondata[i].color;
                }
                that.setData({
                    rjsondata: jsondata,
                    max2: jsondata.length,
                });
                //console.log(jsondata)
            },
        })
    },





    //预习视频播放时候将pjson数据转换为弹幕列表
    pbindPlay: function() {
        // this.data.danmulist = this.data.pjsondata;
        var that = this;
        this.setData({
            pdanmulist: that.data.pjsondata
        })

        that.ppoints();
    },

    //复习视频播放时候将pjson数据转换为弹幕列表
    rbindPlay: function() {
        // this.data.danmulist = this.data.pjsondata;
        var that = this;
        this.setData({
            rdanmulist: that.data.rjsondata
        })

        that.rpoints();
    },


    //预习视频浏览量+1
    ppoints: function() {
        var that = this;
        var id = that.data.id;
        var kind = "preview";
        wx.request({
            url: that.data.ip1 + "/activeWeb/addpoints", //实际接口地址
            headers: {
                'Content-Type': 'application/json'
            },
            data: {
                id: id,
                kind: kind
            },
            success: function(res) {

            },
        })
    },

    //复习视频浏览量+1
    rpoints: function() {
        var that = this;
        var id = that.data.id;
        var kind = "review";
        wx.request({
            url: that.data.ip1 + "/activeWeb/addpoints", //实际接口地址
            headers: {
                'Content-Type': 'application/json'
            },
            data: {
                id: id,
                kind: kind
            },
            success: function(res) {

            },
        })
    },

    //向后端请求初始化数据
    onLoad: function(option) {
        var video_name = option.video_name;
        wx.setNavigationBarTitle({
            title: video_name,
        })
        this.requestData(option.id);
        var id = option.id;
        var that = this
        wx.getSystemInfo({
            success: function(res) {
                that.setData({
                    clientHeight: res.windowHeight,
                    id: id
                });
            }
        })
        var starttime = Date.now();
        this.setData({
                starttime: starttime
            }) //初始时间
        this.setData({
            id: option.id,
        });
    },

    //请求数据
    requestData: function(id) {
        var that = this;
        var id = id;
        var psrc = "";
        wx.request({
            url: that.data.ip1 + "/activeWeb/unitvideo", //实际接口地址
            data: {
                id: id
            },
            method: 'GET',
            header: {
                'content-type': 'application/x-www-form-urlencoded'
            },
            success: function(res) {
                that.setData({
                        videoInfo: res.data
                    }),
                    console.log(res.data);
                that.pgetVideoInfo(that.data.videoInfo[0]['previewVideo']['vid']) //渲染具体的预习视频解析地址
                that.rgetVideoInfo(that.data.videoInfo[0]['reviewVideo']['vid']) //渲染具体的复习视频解析地址
                that.preturndanmu();
                that.rreturndanmu();
            },
            fail: function() {
                wx.showToast({
                    title: '开始上课了哟',
                    duration: 4000,
                    icon: 'loading'
                });
            }
        });
    },

    //获取视频信息把腾讯视频预习ID传入以下函数
    pgetVideoInfo: function(vid) {
        var that = this;
        var urlString = 'https://vv.video.qq.com/getinfo?otype=json&appver=3.2.19.333&platform=11&defnpayver=1&vid=' + vid;
        wx.request({
            url: urlString,
            success: function(res) {
                var dataJson = res.data.replace(/QZOutputJson=/, '') + "qwe";
                var dataJson1 = dataJson.replace(/;qwe/, '');
                var data = JSON.parse(dataJson1);
                var fn_pre = data.vl.vi[0].lnk
                var host = data['vl']['vi'][0]['ul']['ui'][0]['url']
                var streams = data['fl']['fi']
                var seg_cnt = data['vl']['vi'][0]['cl']['fc']
                if (parseInt(seg_cnt) == 0) {
                    seg_cnt = 1
                }
                var best_quality = streams[streams.length - 1]['name']
                var part_format_id = streams[streams.length - 1]['id']

                for (var i = 1; i < (seg_cnt + 1); i++) {
                    var filename = fn_pre + '.p' + (part_format_id % 10000) + '.' + i + '.mp4';
                    that.prequestVideoUrls(part_format_id, vid, filename, 'index' + i, host);
                }
            }
        })
    },

    //根据视频信息解析视频真正的预习播放地址
    prequestVideoUrls: function(part_format_id, vid, fileName, index, host) {
        var keyApi = "https://vv.video.qq.com/getkey?otype=json&platform=11&format=" + part_format_id + "&vid=" + vid + "&filename=" + fileName + "&appver=3.2.19.333"
        var that = this;
        wx.request({
            url: keyApi,
            success: function(res) {
                var dataJson = res.data.replace(/QZOutputJson=/, '') + "qwe";
                var dataJson1 = dataJson.replace(/;qwe/, '');
                var data = JSON.parse(dataJson1);
                if (data.key != undefined) {
                    var vkey = data['key']
                    var url = host + fileName + '?vkey=' + vkey;
                    var part_urls;
                    part_urls = String(url);
                    console.log(part_urls + "========");
                    that.setData({
                        pvideoUrl: part_urls
                    });

                }
            }
        })
    },


    //获取视频信息把腾讯视频复习ID传入以下函数
    rgetVideoInfo: function(vid) {
        var that = this;
        var urlString = 'https://vv.video.qq.com/getinfo?otype=json&appver=3.2.19.333&platform=11&defnpayver=1&vid=' + vid;
        wx.request({
            url: urlString,
            success: function(res) {
                var dataJson = res.data.replace(/QZOutputJson=/, '') + "qwe";
                var dataJson1 = dataJson.replace(/;qwe/, '');
                var data = JSON.parse(dataJson1);
                var fn_pre = data.vl.vi[0].lnk
                var host = data['vl']['vi'][0]['ul']['ui'][0]['url']
                var streams = data['fl']['fi']
                var seg_cnt = data['vl']['vi'][0]['cl']['fc']
                if (parseInt(seg_cnt) == 0) {
                    seg_cnt = 1
                }
                var best_quality = streams[streams.length - 1]['name']
                var part_format_id = streams[streams.length - 1]['id']

                for (var i = 1; i < (seg_cnt + 1); i++) {
                    var filename = fn_pre + '.p' + (part_format_id % 10000) + '.' + i + '.mp4';

                    that.rrequestVideoUrls(part_format_id, vid, filename, 'index' + i, host);
                }
            }
        })
    },

    //根据视频信息解析视频真正的复习播放地址
    rrequestVideoUrls: function(part_format_id, vid, fileName, index, host) {
        var keyApi = "https://vv.video.qq.com/getkey?otype=json&platform=11&format=" + part_format_id + "&vid=" + vid + "&filename=" + fileName + "&appver=3.2.19.333"
        var that = this;
        wx.request({
            url: keyApi,
            success: function(res) {
                var dataJson = res.data.replace(/QZOutputJson=/, '') + "qwe";
                var dataJson1 = dataJson.replace(/;qwe/, '');
                var data = JSON.parse(dataJson1);
                if (data.key != undefined) {
                    var vkey = data['key']
                    var url = host + fileName + '?vkey=' + vkey;
                    var part_urls;
                    part_urls = String(url);
                    console.log(part_urls + "===========");
                    that.setData({
                        rvideoUrl: part_urls
                    });

                }
            }
        })
    },

    /**
     * 生命周期函数--监听页面初次渲染完成
     */
    onReady: function() {
        var that = this;
        this.videoContext = wx.createVideoContext("myvideo");

    },
})