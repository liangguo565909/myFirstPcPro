<template>
  <div class="w details">
    <h3>{{ product.title }}</h3>
    <hr />
    <div class="box">
      <div>
        <Glass :img="img" class='image'></Glass>
      </div>
      <div class="right">
          <h2>{{ product.title }}</h2>
          <ul>
              <li>{{ product.sudu }}</li>
              <li>{{ product.dianji }}</li>
              <li>{{ product.gonglv }}</li>
              <li>{{ product.dianchi }}</li>
              <li>{{ product.xuhang }}</li>
              <li>{{ product.dadeng }}</li>
          </ul>
          <div class="check-pro-cart" id="2128">
                    <img src="../assets/images/cart.png" alt="">
                    <span><router-link :to="{path:'/cart',query:{id:ID}}">加入购物车</router-link></span>
                    
          </div>
      </div>
    </div>
  </div>
</template>

<script>
import Glass from '../views/Glass'
export default {
  data() {
    return {
      ID: parseInt(this.$route.query.id) + 1,
      product: {},
      x:0,
      y:0,
      width:0,
      height:0,
      img:''
    }
  },
  mounted() {
    this.axios
      .get("/details", {
        params: { id: this.ID },
      })
      .then((res) => {
        this.product = res.data[0];
        this.img=res.data[0].image0;
      });
  },
  components:{Glass}
};
</script>

<style scoped>
.details {
  margin-top: 100px;
  background-color: white;
}
.image{
  margin: 0 0 0 300px;
}
.box{
    display: flex;
}
.right{
    margin: 0 0 0 50px;
}
 ul li{
     line-height: 20px;
     margin-left:20px
}
.big {
  width: 128px;
  height: 128px;
}
.parame {
  width: 246px;
  height: 42px;
}
.small {
  width: 36px;
  height: 36px;
}
.check-pro-cart {
    width: 174px;
    height: 48px;
    border: 1px solid #1A98CF;
    box-sizing: border-box;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 18px;
    color: #1A98CF;
    margin-right: 34px;
    cursor: pointer;
}
.check-pro-cart a{
  text-decoration: none;
}

</style>