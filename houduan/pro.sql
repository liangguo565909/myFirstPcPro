#设置客户端连接服务器端的编码
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS pro;
#创建数据库，设置存储编码为utf-8
CREATE DATABASE pro CHARSET=UTF8;
#进入数据库
USE pro;
#创建保存用户数据的表
CREATE TABLE user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(11) UNIQUE,
    upwd VARCHAR(11),
    phone VARCHAR(11)
);
#插入数据
INSERT INTO user VALUES(1,'root','123456','');

#创建保存图片数据的表
CREATE TABLE pic(
    pid INT PRIMARY KEY,
    src VARCHAR(50) UNIQUE,
    pto  VARCHAR(30),
    title VARCHAR(50)
);
#插入数据
INSERT INTO pic VALUES(1,'/public/img/slide/slide1.jpg',"","");
INSERT INTO pic VALUES(2,'/public/img/slide/slide2.jpg',"","");
INSERT INTO pic VALUES(3,'/public/img/slide/slide3.jpg',"","");
INSERT INTO pic VALUES(4,'/public/img/slide/slide4.jpg',"","");
INSERT INTO pic VALUES(5,'/public/img/slide/slide5.jpg',"","");

#创建保存产品数据的表
CREATE TABLE product(
    pid INT PRIMARY KEY,
    src VARCHAR(50) UNIQUE,
    pto  VARCHAR(30),
    title VARCHAR(50)
);
INSERT INTO product VALUES(1,'http://localhost:9090/public/img/product/1.png',"","<h2>九号电动摩托车E125</h2>");
INSERT INTO product VALUES(2,'http://localhost:9090/public/img/product/2.png',"","<h2>九号电动摩托车E100</h2>");
INSERT INTO product VALUES(3,'http://localhost:9090/public/img/product/3.png',"","<h2>九号电动车摩托车E80C</h2>");
INSERT INTO product VALUES(4,'http://localhost:9090/public/img/product/4.png',"","<h2>赛格威平衡轮W1</h2>");
INSERT INTO product VALUES(5,'http://localhost:9090/public/img/product/5.png',"","<h2>九号平衡车卡丁改装套件</h2>");
INSERT INTO product VALUES(6,'http://localhost:9090/public/img/product/6.png',"","<h2>Ninebot 九号电动滑板车MAX G30</h2><p>超长续航 快意驰骋</p>");

#创建保存产品详情数据的表
CREATE TABLE details(
    did INT PRIMARY KEY ,
    title VARCHAR(20),
    image0 VARCHAR(100),
    image1 VARCHAR(100),
    image2 VARCHAR(100),
    image3 VARCHAR(100),
    image4 VARCHAR(100),
    parame VARCHAR(100),
    sudu VARCHAR(20),
    dianji VARCHAR(20),
    gonglv VARCHAR(20),
    dianchi VARCHAR(20),
    xuhang VARCHAR(20),
    dadeng VARCHAR(20)
);
INSERT INTO details VALUES(1,'九号电动摩托车E125','http://localhost:9090/public/img/details/E125/bai/0.png','http://localhost:9090/public/img/details/E125/bai/1.png','http://localhost:9090/public/img/details/E125/bai/2.png','http://localhost:9090/public/img/details/E125/bai/3.png','http://localhost:9090/public/img/details/E125/bai/4.png','http://localhost:9090/public/img/details/E125/bai/E125Param.jpg','最高速度:75km/h','Bosch12寸无刷电机','最大功率:3.6kw','ATL动力锂电池,2000wh','续航60～120km','6灯珠矩阵式LED大灯,带透镜');

#创建保存配件数据的表
CREATE TABLE parts(
    pid INT PRIMARY KEY,
    src VARCHAR(50) UNIQUE,
    pto  VARCHAR(30),
    title VARCHAR(50)
);
INSERT INTO parts VALUES(1,'http://localhost:9090/public/img/parts/1.jpg',"","<h2>九号电动国标车后儿童座椅专用脚踏</h2>");
INSERT INTO parts VALUES(2,'http://localhost:9090/public/img/parts/2.jpg',"","<h2>九号休闲双肩背包</h2>");
INSERT INTO parts VALUES(3,'http://localhost:9090/public/img/parts/3.jpg',"","<h2>九号多功能双肩背包</h2>");
INSERT INTO parts VALUES(4,'http://localhost:9090/public/img/parts/4.jpg',"","<h2>九号电动自行车半盔</h2><p>国标车系列，滑板车</p>");
INSERT INTO parts VALUES(5,'http://localhost:9090/public/img/parts/5.jpg',"","<h2>九号卡丁车Pro前轮胎总成</h2>");
INSERT INTO parts VALUES(6,'http://localhost:9090/public/img/parts/6.jpg',"","<h2>九号平衡车Max舒适性轮胎</h2>");
INSERT INTO parts VALUES(7,'http://localhost:9090/public/img/parts/7.jpg',"","<h2>九号卡丁Pro运动漂移型后轮胎</h2>");
INSERT INTO parts VALUES(8,'http://localhost:9090/public/img/parts/8.jpg',"","<h2>指纹U型锁</h2>");

#创建保存平衡车数据的表
CREATE TABLE ybike(
    yid INT PRIMARY KEY,
    src VARCHAR(50) UNIQUE,
    pto  VARCHAR(30),
    title VARCHAR(50)
);
#插入数据
INSERT INTO ybike VALUES(1,'http://localhost:9090/public/img/ybike/1.jpg',"","<h2>Ninebot E</h2><p>精英型</p>");
INSERT INTO ybike VALUES(2,'http://localhost:9090/public/img/ybike/2.jpg',"","<h2>赛格威平衡轮W1</h2>");
INSERT INTO ybike VALUES(3,'http://localhost:9090/public/img/ybike/3.png',"","<h2>路萌</h2>");
INSERT INTO ybike VALUES(4,'http://localhost:9090/public/img/ybike/4.jpg',"","<h2>九号平衡车Nano</h2>");