<template>
  <div>
    <div class="w carousel">
      <div   :class='{transition,image}' :style="{marginLeft:marginLeft+'px'}">
        <div   v-for='(item,index) of imgs' :key='index' >
              <router-link to=''><img :src="'http://localhost:9090'+item.src"></router-link>
        </div>
        <div>
              <router-link to=''><img :src="'http://localhost:9090'+imgs[0].src"></router-link>
        </div>
      </div>
    </div>
    <ul id='ul-idxs'>
          <li :class="idxs==i?'active':''" v-for='(item,idxs) of 5' :key='idxs'></li>
    </ul>

            <div class="w mall_title">推荐产品</div>
            <div class="w product">
                <div v-for='(product,index) of products' :key="index">
                  <router-link :to="{path:'/details',query:{id:index}}"><img :src='product.src'></router-link>
                  <div v-html="product.title"></div>
                </div>
            </div>

    <div class="w mall_title">相关配件</div>
    <div class='w parts'>
        <div v-for='(part,index) of parts' :key="index">
                  <router-link to=''><img :src='part.src'></router-link>
                  <div v-html="part.title"></div>
        </div>
    </div>

    <div class="w mall_title">平衡车</div>
    <div class='w ybike'>
        <div v-for='(ybike,index) of ybikes' :key="index">
                  <router-link to=''><img :src='ybike.src'></router-link>
                  <div v-html="ybike.title"></div>
        </div>
    </div>
    <my-footer></my-footer>
  </div>
</template>

<script>
  export default {
    data(){
      return {
        imgs:[{src:''}],
        products:[{src:''}],
        parts:[{src:''}],
        ybikes:[{src:''}],
        marginLeft:0,
        i:0,
        imgWidth:-1200,
        imgClass:{
          transition:true
        },
        transition:"transition",
        image:"image",
        timer:null
      }
    },
    mounted(){
      this.axios.get('/slide').then(res=>{
          this.imgs=res.data
      }),
      this.axios.get('/product').then(res=>{
          this.products=res.data;
      }),
      this.axios.get('/parts').then(res=>{
          this.parts=res.data;
      }),
      this.axios.get('/ybike').then(res=>{
          this.ybikes=res.data;
      }),
      this.moveTo()
    },
    methods:{
      moveTo(){
          setInterval(()=>{
          this.i++;
          this.marginLeft=this.i*this.imgWidth
          if(this.i==5){
            this.i=0;
            setTimeout(()=>{
              this.transition='';
            },500)
          }
          },2000)
      }
    }
  }
</script>

<style>
  .carousel{
    margin-top:106px;
    width:1200px;
    height:500px;
    display:flex;
    margin-bottom:-30px;
    overflow:hidden;
  }
  .image{
      width:1200px;
      height:500px;
      display:flex;
  }
  .transition{
    transition:all .5s linear;
  }
   #ul-idxs{
     display:flex;
     list-style:none;
     margin-left:650px;
   }
  #ul-idxs li{
    width:15px;
    height:15px;
    border-radius:50%;
    background:white;
    margin-left:20px;
  }
   #ul-idxs li.active{
    background-color:blue;
  }
  .product{
    width:1200px;
  }
  .product>div{
    float:left;
    width:380px;
    height:380px;
    text-align:center;
    background-color:white;
    border:10px solid #EAECED;
    padding-bottom:50px
  }
  .product div img{
    width:200px;
    height:200px;
  }
  .mall_title {
    color: #707473;
    font-size: 24px;
    line-height: 85px;
}
.parts{
    width:1200px;
  }
  .parts>div{
    float:left;
    width:280px;
    height:360px;
    text-align:center;
    background-color:white;
    border:10px solid #EAECED;
  }
  .parts div img{
    width:200px;
    height:200px;
  }
  .ybike{
    width:1200px;
  }
  .ybike>div{
    float:left;
    width:280px;
    height:360px;
    text-align:center;
    background-color:white;
    border:10px solid #EAECED;
  }
  .ybike div img{
    width:200px;
    height:200px;
  }
</style>