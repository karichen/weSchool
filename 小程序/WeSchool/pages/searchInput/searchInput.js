// pages/searchInput/searchInput.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    hotSearch: ["jsj","微信小程序","互联网+"],
    historySearch:[]
  },

  clear: function () {
    var that = this;
    that.setData({
      content: ""
    });
  },

  //监听搜索框输入的文字
  changeSearch: function (event) {
    let that = this;
    var inputSearch = event.detail.value;
    console.log(inputSearch);
    if (inputSearch == "") {
      that.setData({
        word: inputSearch
      })
    } else {
      that.setData({
        isShow: true,
        content: inputSearch
      })
    }
  },

  //跳转搜索结果
  skipResult: function (e) {
    var content = this.data.content;
    content = (content == undefined ? undefined : content.replace(/\s+/g, ""));
    if (content == undefined || content == "") {
      wx.showModal({
        title: '提示',
        confirmText: '确定',
        content: '搜索内容不可为空',
        success: function (res) {
          if (res.cancel) {

          } else if (res.confirm) {

          }
        },
      })
    } else {
      console.log(content);
      var historySearch = wx.getStorageSync("historySearch");
      if (historySearch.length == 0) {
        historySearch = new Array();
        historySearch[0] = content;
      } else if (historySearch.length < 10 && content !== "") {
        historySearch[historySearch.length] = content;
      } else if (historySearch.length >= 10 && content !== "") {
        for (var i = 0; i < historySearch.length; i++) {
          historySearch[i] = historySearch[i + 1];
        }
        historySearch[historySearch.length - 1] = content;
      };
      wx.setStorageSync('historySearch', historySearch);
      this.openLocationsercher();
      wx.navigateTo({
        url: '../searchResult/searchResult?content=' + content
      })
    }
  },

  //清除历史搜索
  searchClear: function () {
    wx.showModal({
      content: '确定要删除历史记录？',
      cancelText: '取消',
      confirmText: '确定',
      success: res => {
        var that = this;
        if (res.confirm) {
          wx.removeStorage({
            key: 'historySearch',
            success: function (res) {
              that.setData({
                historySearch: ""
              });
            }
          })
        }
      }
    })
  },

  //点击搜索
  clickSearch: function (e) {
    var content = e.currentTarget.dataset.current;
    var historySearch = wx.getStorageSync("historySearch");
    if (historySearch.length == 0) {
      historySearch = new Array();
      historySearch[0] = content;
    } else if (historySearch.length < 10 && content !== "") {
      historySearch[historySearch.length] = content;
    } else if (historySearch.length >= 10 && content !== "") {
      for (var i = 0; i < historySearch.length; i++) {
        historySearch[i] = historySearch[i + 1];
      }
      historySearch[historySearch.length - 1] = content;
    };
    wx.setStorageSync('historySearch', historySearch);
    this.openLocationsercher();
    wx.navigateTo({
      url: '../searchResult/searchResult?content=' + content
    })
  },

  //获取缓存数据
  openLocationsercher: function () {
    this.setData({
      historySearch: wx.getStorageSync('historySearch').reverse() || [], //若无储存则为空
    })
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.openLocationsercher();
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})