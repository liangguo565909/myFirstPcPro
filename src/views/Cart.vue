<template>
    <div class="w cart">
        <h2>我的购物车</h2>
        <div class="content" v-if='!ID'>
            <h1>你的购物车还是空的<br>赶紧行动吧!</h1>
            <button><router-link to='/'>马上去购物</router-link></button>
        </div>
        <div v-else class="list">
            <img class="big" :src="product.image0" alt="" />
            <p>{{ product.title }}</p>
            <p>1</p>
            <p>￥12991</p>
        </div>
       </div>
</template>

<script>
export default {
    data(){
        return{
            ID: parseInt(this.$route.query.id),
            product: {}
        }
    },
    mounted(){
        this.axios
      .get("/details", {
        params: { id: this.ID },
      })
      .then((res) => {
        this.product = res.data[0];
      });
    }
}
</script>

<style scoped>
.cart{
    margin-top:106px;
}
.cart h1 {
    width: 280px;
    font-size: 30px;
    line-height: 36px;
    margin-bottom: 20px;
    color: #6d6d6d;
    font-weight: normal;
}
.cart button{
    background-color: #ff4a00;
    border-color: #ff4a00;
    color: #fff;
    margin-bottom: 0;
    font-size: 14px;
    height: 38px;
    line-height: 38px;
    text-align: center;
    cursor: pointer;
    border: 1px solid #ff4a00;
    padding: 0;
    width: 148px;
}
.cart a{
    text-decoration: none;
    color: #fff;
}
.content{
    margin-left: 400px;
}
.big {
  width: 128px;
  height: 128px;
}
.list{
    display: flex;
}
.list p{
    margin-top: 30px;
    margin-left:100px;
}
</style>