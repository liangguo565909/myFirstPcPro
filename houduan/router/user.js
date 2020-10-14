const express=require("express");
//创建路由对象
const router=express.Router();
//引入连接池
const pool=require("../pool.js");

//轮播
router.get("/slide",(req,res)=>{
    pool.query("select * from pic ",(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

//产品
router.get("/product",(req,res)=>{
    pool.query("select * from product ",(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

//配件
router.get("/parts",(req,res)=>{
    pool.query("select * from parts ",(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

//平衡车
router.get("/ybike",(req,res)=>{
    pool.query("select * from ybike",(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

//登录
router.get("/login",(req,res)=>{
    var uname=req.query.username;
    var upwd=req.query.userpassword;
    console.log(uname,upwd)
    var sql='select * from user where uname=? and upwd=?';
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        res.send({msg:'login success',code:1,result:result})
    })
})

//注册
router.get("/register",(req,res)=>{
    var phone=req.query.phone;
    var uname=req.query.reupwd;
    var upwd=req.query.upwd;
    console.log(req.query)
    var sql="INSERT INTO user VALUES(NULL,?,?,?)"
    pool.query(sql,[uname,upwd,phone],(err,result)=>{
        if(err) throw err;
        res.send({msg:'register success',code:1})
    })
})

//详情
router.get("/details",(req,res)=>{
    var id=req.query.id
    var sql="select * from details where did=?"
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

//导出
module.exports=router;