<template>
  <div id="app">
    <my-header></my-header> 
    <router-view></router-view>
    <my-footer></my-footer>
  </div>
</template>
<style>
*{
    margin: 0;
    padding: 0;
}
/* 版心1200px */
.w{
    width: 1200px;
    margin: 0 auto;
    line-height: 68px;
}
body{
  background-color:#EAECED;
}
</style>
