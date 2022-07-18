// pages/goods/index.js
import http from '../../util/http'
Page({

  // 页面的初始数据
  data: {
    goods: null,
    windowWidth: 0,
    goodsId: 0,
    goodsCount: 0,
    show: false,
    goodsItem: [],
    totalPrice: 0.00,
    checked: [],
    totalGoodsCount: 0
  },

  // 生命周期函数--监听页面加载
  async onLoad(options) {
    this.setData({ goodsId: options.id })
    this.setData({ windowWidth: wx.getSystemInfoSync().windowWidth })
    let res = await http.GET('/goods/info',{ id: options.id });
    this.setData({ goods: res.data.data })
  },

  // 返回首页
  backToHome() {
    wx.switchTab({ url: '/pages/home/index' })
  },

  // 增加商品数量
  addGoods() {
    let totalPrice = this.data.goods.price
    this.setData({
      goodsCount: 1,
      totalPrice,
    }, () => {
      this.addToCart()
    })
  },

  // 当进步器改变时，修改商品数量
  stepperChange(event){
    let goodsCount = event.detail
    let totalPrice = this.data.goods.price * goodsCount
    this.setData({
      goodsCount,
      totalPrice,
    }, () => {
      this.addToCart()
    })
  },

  // 添加商品到购物车
  async addToCart() {
    await http.POST('/cart/add',{ 
      goodsId: this.data.goodsId, 
      goodsCount: this.data.goodsCount,
      openId: wx.getStorageSync('openId')
    })
  },

  // 展示购物车
  showCartPopup() {
    if(this.data.show){
      this.setData({ show: false });
    } else {
      this.setData({ show: true });
    }
    console.log(this.data.show);
  },

  // 生命周期函数--监听页面显示
  async onShow() {
    // 获取购物车信息
    let res = await http.GET('/cart/info', {openId: wx.getStorageSync('openId')})
    this.setData({
      goodsItem: res.data.data.cartItem,
      totalPrice: res.data.data.totalPrice,
      goodsCount: this.data.goodsItem != null ? this.data.goodsItem[this.data.goodsId] : 0
    })
    let totalGoodsCount = 0
    if (this.data.goodsItem != null) {

      for (let i = 0; i < this.data.goodsItem.length; i++) {
        totalGoodsCount = totalGoodsCount + this.data.goodsItem[i].count
        if (this.data.goodsItem[i].id == this.data.goodsId) {
          this.setData({goodsCount: this.data.goodsItem[i].count})
          console.log(this.data.goodsItem[i].count);
        }
      }
    }
    this.setData({totalGoodsCount: totalGoodsCount})
  },

  // 清空购物车
  async clearCart(){
    await http.DELETE('/cart/clear',{ 
      openId: wx.getStorageSync('openId')
    })
  },
  
  // 购物车选中
  onChange(event) {
    this.setData({ checked: event.detail});
  },

  // 点击结算
  settleAccounts(){
    wx.navigateTo({url: '/pages/order/confirm/index'})
  }
})