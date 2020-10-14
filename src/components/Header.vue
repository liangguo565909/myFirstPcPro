<template>
  <div class="w   head">
    <!--      nav部分开始             -->

    <nav class="notice-box">
      <div class="notice-con">
        <div class="notice-con-left">
          <router-link to=''>九号机器人官网</router-link>
          <span class="notice-line"></span>
          <router-link to=''>商城首页</router-link>
          <img class="notice-img" src="../assets/images/notice.png" alt />
          <span>通知：</span>
          <router-link to='' class="notice-title"   >
              九号“舞蹈家”，闪耀首届华人华侨文艺表演现场
          </router-link>
        </div>
        <div class="notice-con-right">
          <router-link  to='/login' v-if="this.$store.state.isLogined=='0'">登录</router-link>
          <button @click='logout' v-else>{{this.$store.state.username}},注销</button>
          <router-link  to='/register'>注册</router-link>
          <router-link to=''>
            <img class="cart-img" src="../assets/images/cart.png" alt />
            <span><router-link to='/cart'>购物车</router-link></span>
            <span class="cart-pro-num">
              (<span id="total_num">{{id}}</span>)
            </span>
          </router-link>
        </div>
      </div>
    </nav>
    <!--      nav部分结束             -->
    <!--      header部分开始             -->
    
    <div class="header">
        <div class="w">
            <ul>
                <li><router-link to=''><img src="../assets/images/logo.png" alt="" class="logo-img"></router-link></li>
                <li><router-link to=''>商品分类 <img src="../assets/images/down.png" alt=""></router-link></li>
                <li><router-link to=''>Ninebot 平衡车</router-link></li>
                <li><router-link to=''>配件</router-link></li>
                <li><router-link to=''>九号电动</router-link></li>
                <li><router-link to=''><img src="../assets/images/dingzhi.png" alt="" class="dingzhi-img"> 电动车定制</router-link></li>
                <li><router-link to=''>童车</router-link></li>
                <li><router-link to=''>滑板鞋</router-link></li>
                <li><router-link to=''>三方商城 <img src="../assets/images/down.png" alt=""></router-link></li>
            </ul>
        </div>
    </div>
    <!--      header部分结束             -->

  </div>
</template>




<style scoped>

/*  nav部分开始 */
.head{
  position: fixed;
  left: 0;
  top: 0;
  right: 0;
  width: 100%;
}
.notice-box {
  width: 100%;
  min-width: 1200px;
  height: 36px;
  background: #000;
}
.notice-con {
  width: 1200px;
  height: 100%;
  margin: auto;
  font-size: 14px;
  color: #fff;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.notice-con-left {
  display: flex;
  align-items: center;
}
.notice-con a {
  font-size: 14px;
  color: #fff;
}
a {
  text-decoration: none;
}
a,
input {
  margin: 0;
  padding: 0;
  outline: none;
  -webkit-tap-highlight-color: rgba(255, 0, 0, 0);
}
.notice-line {
  width: 1px;
  height: 14px;
  background: #fff;
  margin: 0 14px;
}
.notice-img {
  width: 25px;
  height: 25px;
  display: block;
  margin-left: 28px;
  margin-right: 6px;
}
.notice-con-right {
  display: flex;
  align-items: center;
}
.notice-con-right a {
  margin-left: 20px;
  display: flex;
  align-items: center;
}
.cart-img {
    width: 18px;
    height: 16px;
    display: block;
    margin-right: 6px;
}
/*  nav部分结束 */

/*  header部分开始 */
.header {
  width: 100%;
  height: 68px;
  background-color: #fefefe;
  box-shadow: 0px 5px 5px #ccc;
}
.logo-img{
    margin-top:11.5px;
}
.dingzhi-img{
    width:15px ;
    height:15px;
}
.header ul {
    list-style: none;
    display: flex;
    justify-content: space-between;
}
.header li{
    float: left;
}
.header a {
    font-size: 16px;
    color: #333;
}
/*  header部分结束 */

</style>



<script>
export default {
    data(){
      return{
        id:0
      }
    },
    updated(){
        if(parseInt(this.$route.query.id)){
          this.id=parseInt(this.$route.query.id)
        }
    },
    methods:{
      logout(){
        this.$store.commit('logout');
      }
    }
};
</script>