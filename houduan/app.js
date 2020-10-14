//引入express模块
const express=require("express");
//引入bodyParser模块(在路由器模块之前引用)
const bodyParser=require("body-parser")
//引入路由
const ur=require("./router/user.js")
//创建web服务器
const app=express();
//设置端口
app.listen(9090);



//托管静态资源到public
app.use("/public",express.static("./public"));


//body-parser中间件,将post请求的数据解析为对象
app.use(bodyParser.urlencoded({
    extended:false
}))


//挂载用户路由器,添加前缀user
app.use("/user",ur)