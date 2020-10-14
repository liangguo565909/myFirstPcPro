<template>
  <div class="footer">
    <div class="wrap tools_box">
      <router-link to="">
        <i></i>预约维修服务
      </router-link>
      <span>|</span>
      <router-link to="">
        <i></i>7天无理由退货
      </router-link>
      <span>|</span>
      <router-link to="">
        <i></i>15天免费换货
      </router-link>
      <span>|</span>
      <router-link to="">
        <i></i>全场包邮
      </router-link>
      <span>|</span>
      <router-link to="">
        <i></i>售后网点
      </router-link>
    </div>
    <div class="footer1">
      <ul>
        <li>
          <h2>新闻媒体</h2>
          <p>
            <router-link to="">公司动态</router-link>
          </p>
          <p>
            <router-link to="">视频中心</router-link>
          </p>
          <p>
            <router-link to="">社交媒体</router-link>
          </p>
        </li>
        <li>
          <h2>服务支持</h2>
          <p>
            <router-link to="">FAQ问题</router-link>
          </p>
        </li>
        <li>
          <h2>线下服务</h2>
          <p>
            <router-link to="">授权体验店</router-link>
          </p>
          <p>
            <router-link to="">维修服务中心</router-link>
          </p>
          <p>
            <router-link to="">渠道合作</router-link>
          </p>
          <p>
            <router-link to="">代理加盟</router-link>
          </p>
        </li>
        <li>
          <h2>关于我们</h2>
          <p>
            <router-link to="">公司介绍</router-link>
          </p>
          <p>
            <router-link to="">加入我们</router-link>
          </p>
          <p>
            <router-link to="">高管团队</router-link>
          </p>
        </li>

        <li>
          <h2>产品购买</h2>
          <p>
            <router-link to="">官方商城</router-link>
          </p>
          <p>
            <router-link to="">京东旗舰店</router-link>
          </p>
          <p>
            <router-link to="">天猫旗舰店</router-link>
          </p>
        </li>
        <li>
          <h2>更多服务</h2>
          <p>
            <router-link to="">礼品卡</router-link>
          </p>
          <p>
            <router-link to="">防伪查询</router-link>
          </p>
          <p>
            <router-link to="">APP下载</router-link>
          </p>
        </li>
        <div class="tell">
          <div class="tel">400-607-0001</div>
          <p>周一至周日 09:00-18:00</p>
          <p>
            <router-link to=""
              style="color:gray;"
            >客服沟通</router-link>
          </p>
          <p>扫描二维码</p>
          <p>手机端访问</p>
          <img
            src="../assets/images/tel_wap.png"
            style="height: 73px;width: 73px;float: right;margin-top: -72px;margin-right: 44px;;"
          />
        </div>
      </ul>
    </div>
    <div class="wrap copyright_box">
      <div class="logo">
        <img src="../assets/images/logo.png" />
      </div>
      <div class="copyright_text">
        <div class="copyright_link">
          <router-link to="">Ninebot官网</router-link>
          <span>|</span>
          <router-link to="">Segway官网</router-link>
          <span>|</span>
          <router-link to="">Segway亚太</router-link>
          <span>|</span>
          <router-link to="">Segway韩国</router-link>
          <span>|</span>
          <router-link to="">Segway欧洲</router-link>
          <span>|</span>
          <router-link to="">segwayrobotics</router-link>
        </div>
        <div style="color: #808080;">
          Copyright 2020 Segway-Ninebot九号机器人
          <router-link to=""
            style="color:#808080;"
          >津ICP备14007501号</router-link>
          <router-link to=""
            style="color:#808080;"
          >津公网安备 12011402000189号</router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
a{
  text-decoration: none;
}
.footer1 ul {
  text-align: left;
  list-style: none;
}
.inaline {
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
}

.intwoline {
  display: -webkit-box !important;
  overflow: hidden;

  text-overflow: ellipsis;
  word-break: break-all;

  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2;
}

/*清楚浮动*/
.clearfix::before,
.clearfix::after {
  content: "";
  height: 0;
  line-height: 0;
  display: block;
  visibility: none;
  clear: both;
}

.clearfix {
  *zoom: 1;
}

[v-cloak] {
  display: none !important;
}

/*footer*/
.wrap {
  width: 1200px;
  margin: 0 auto;
}
.wrap a {
  color: #333333;
}
.footer {
  width: 100%;
  height: auto;
  overflow: hidden;
  color: #737373;
  min-width: 1200px;
  border-top: 2px solid #ebeced;
  background: #ffffff;
  margin-top:80px;
}

.tools_box {
  height: 76px;
  display: flex;
  justify-content: space-around;
  padding: 0 90px;
  align-items: center;
}

.tools_box a {
  display: flex;
  align-items: center;
}

.tools_box a:hover {
  color: #1a98cf;
}

.tools_box a i {
  display: inline-block;
  width: 25px;
  height: 25px;
  margin-right: 6px;
  background-repeat: no-repeat;
  background-size: 130px 50px;
  background-image: url(../assets/images/common_icon.png);
}

.tools_box a:nth-child(1) i {
  background-position: 0 0;
}

.tools_box a:nth-child(3) i {
  background-position: -26px 0;
}

.tools_box a:nth-child(5) i {
  background-position: -53px 0;
}

.tools_box a:nth-child(7) i {
  background-position: -78px 0;
}

.tools_box a:nth-child(9) i {
  background-position: -103px 0;
}

.tools_box a:nth-child(1):hover i {
  background-position: 0 -25px;
}

.tools_box a:nth-child(3):hover i {
  background-position: -26px -25px;
}

.tools_box a:nth-child(5):hover i {
  background-position: -53px -25px;
}

.tools_box a:nth-child(7):hover i {
  background-position: -78px -25px;
}

.tools_box a:nth-child(9):hover i {
  background-position: -103px -25px;
}

.footer1 {
  width: 100%;
  height: 255px;
  background-color: #fff;
}

.footer1 ul {
  width: 1200px;
  padding-top: 36px;
  margin: 0 auto;
  height: 210px;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.footer1 li {
  width: 160px;
  float: left;
}

.footer1 h2 {
  color: #333;
  margin-bottom: 30px;
}

.footer1 li p {
  margin-top: 6px;
}

.footer1 p a {
  color: #808080;
}

.footer1 p a:hover {
  text-decoration: none;
  color: #1a98cf;
}

.tell {
  width: 200px;
  float: left;
}

.tell .tel {
  font-size: 25px;
  color: #00ace9;
}

.tell p {
  margin-top: 5px;
}

.tell p a {
  color: #737373;
}

.server {
  margin-top: 22px;
  float: left;
  width: 100%;
  float: left;
}

.server span {
  font-size: 20px;
  position: relative;
  top: -5px;
  color: #4e4f4f;
  margin-left: 5px;
}

.footer2 {
  background-color: #eeeeee;
  width: 100%;
}

.footer2_m {
  width: 1000px;
  text-align: center;
  margin: 0 auto;
  padding-top: 40px;
  position: relative;
}

.footer2_m .map {
  position: absolute;
  right: 90px;
  bottom: 40px;
}

.footer2_m .map span {
  margin-left: 10px;
  position: relative;
  top: -3px;
}

.anim {
  transition: all 0.3s ease-in-out;
  -webkit-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
}

.banner_detail {
  position: relative;
  width: 100%;
  height: 461px;
  background-size: cover;
  overflow: hidden;
  background-position: center;
  background-repeat: no-repeat;
}

.weizhi {
  width: 100%;
  height: 60px;
  line-height: 60px;
  position: relative;
}

.weizhi p {
  background-color: #fff;
  width: 100%;
  height: 100%;
  overflow: hidden;
  position: absolute;
  z-index: 88;
  left: 0;
  top: 0;
  opacity: 0.6;
}

.weizhi_m {
  width: 100%;
  height: 100%;
  margin: 0 auto;
  position: relative;
  z-index: 99;
  width: 970px;
  font-size: 24px;
  color: #737373;
}

/*客服*/
.layer {
  position: fixed;
  right: 70px;
  top: 50%;
  margin-top: -97px;
  z-index: 10000;
}

.layer-scroll {
  -webkit-animation: l 0.5s;
  animation: l 0.5s;
}

.layer ul {
  border-radius: 5px;
  box-shadow: 0 0 6px #e5e5e5;
}

.layer ul li {
  position: relative;
  z-index: 10000;
  cursor: pointer;
}

.layer ul li a {
  display: inline-block;
  width: 39px;
  height: 48px;
  text-align: center;
  line-height: 48px;
  background-color: #fff;
  color: #00ace9;
  -webkit-transition: all 0.2s;
  transition: all 0.2s;
  font-size: 17px;
}

.layer ul li a.icon-weixin {
  border-radius: 5px 5px 0 0;
}

.layer ul li a.icon-service {
  border-radius: 0 0 5px 5px;
}

.layer ul li > a:hover {
  background-color: #00ace9;
  color: #fff;
  text-decoration: none;
}

a:hover {
  text-decoration: none;
}

#zaixian:hover {
  background-color: #fff;
}

.layer ul li:not(:last-child):after {
  content: "";
  width: 100%;
  height: 0;
  border-bottom: 1px solid #eee;
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
}

.layer ul li:hover .layer_box {
  display: block;
  -webkit-animation: i 0.3s ease-in-out forwards;
  animation: i 0.3s ease-in-out forwards;
  -webkit-transform-origin: right center;
  transform-origin: right center;
}

.layer ul li:hover .phone_box {
  -webkit-transform-origin: right 40%;
  transform-origin: right 40%;
}

.layer ul li .layer_box {
  position: absolute;
  right: 50px;
  border: 1px solid #e2e2e2;
  box-shadow: 0 0 10px #e2e2e2;
  border-radius: 5px;
  padding: 18px 16px 16px;
  display: none;
  background-color: #fff;
}

.layer ul li .layer_box:before {
  border: 8px dashed transparent;
  border-left-color: #d7d7d7;
  border-left-style: solid;
}

.layer ul li .layer_box:after,
.layer ul li .layer_box:before {
  position: absolute;
  width: 0;
  height: 0;
  content: "";
  top: inherit;
  bottom: inherit;
  left: 100%;
  margin-left: -1px;
  font-size: 0;
}

.layer ul li .layer_box:after {
  border: 7px dashed transparent;
  border-left-color: #fff;
  border-left-style: solid;
}

.layer ul li .online-box {
  top: -51px;
  width: 247px;
  height: 103px;
}

.layer ul li .online-box:after,
.layer ul li .online-box:before {
  top: 73px;
}

.layer ul li .online-box p {
  color: #000;
  margin-bottom: 2px;
}

.layer ul li .online-box span {
  color: #a1a1a1;
  font-size: 13px;
}

.layer ul li .online-box .onlineBtn {
  font-size: 14px;
  position: absolute;
  left: 16px;
  bottom: 16px;
  border: 0;
  outline: none;
  background-color: #00ace9;
  color: #fff;
  padding: 6px 10px;
  border-radius: 4px;
  cursor: pointer;
  font-family: helvetica neue, arial, hiragino sans gb, microsoft yahei,
    sans-serif;
  height: 21px;
  line-height: 21px;
}

.layer ul li .online-box .onlineBtn:hover {
  background-color: #00ace9;
}

.layer ul li .qq_box,
.layer ul li .wechat_box {
  top: -51px;
  width: 300px;
  height: 95px;
  padding-bottom: 0;
  padding: 26px 23px;
}

.layer ul li .qq_box:after,
.layer ul li .qq_box:before,
.layer ul li .wechat_box:after,
.layer ul li .wechat_box:before {
  top: 73px;
}

.layer ul li .qq_box i,
.layer ul li .wechat_box i {
  width: 95px;
  height: 95px;
  display: block;
  position: absolute;
  left: 23px;
  top: 26px;
}

.layer ul li .qq_box i.wechat_code,
.layer ul li .wechat_box i.wechat_code {
  background-size: 100% 100%;
}

.layer ul li .qq_box i.qq_code,
.layer ul li .wechat_box i.qq_code {
}

.layer ul li .qq_box .txt-box,
.layer ul li .wechat_box .txt-box {
  padding-left: 112px;
  height: 95px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -ms-flex-direction: column;
  flex-direction: column;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
}

.layer ul li .qq_box .txt-box p,
.layer ul li .wechat_box .txt-box p {
  display: block;
  color: #000;
  margin-bottom: 8px;
}

.layer ul li .qq_box .txt-box span,
.layer ul li .wechat_box .txt-box span {
  color: #a1a1a1;
}

.layer ul li .phone_box {
  top: -52px;
  width: 313px;
}

.layer ul li .phone_box:after,
.layer ul li .phone_box:before {
  top: 73px;
}

.layer ul li .phone_box dl {
  line-height: 22px;
}

.layer ul li .phone_box dl dt {
  padding-top: 10px;
  color: #000;
  border-top: 1px solid #e2e2e2;
  font-size: 13px;
  text-align: justify;
}

.layer ul li .phone_box dl dd {
  margin-bottom: 10px;
}

.layer ul li .phone_box dl dd p {
  color: #000;
}

.layer ul li .phone_box dl dd p:nth-child(2) {
  font-size: 16px;
}

.layer ul li .phone_box dl dd span {
  display: block;
  color: #a1a1a1;
  font-size: 13px;
  text-align: justify;
}

.layer ul li:last-child .iconfont {
  border-radius: 0 0 5px 5px;
}


.iconfont {
  font-family: iconfont !important;
  font-size: 16px;
  font-style: normal;
  font-weight: 400;
  -webkit-font-smoothing: antialiased;
  -webkit-text-stroke-width: 0.2px;
  -moz-osx-font-smoothing: grayscale;
}

.icon-tip:before {
  content: "\e603";
}

.icon-down:before {
  content: "\e600";
}

.icon-up:before {
  content: "\e604";
}

.icon-currect:before {
  content: "\e629";
}

.icon-square:before {
  content: "\e606";
}

.icon-phone:before {
  content: "\e607";
}

.icon-back:before {
  content: "\e608";
}

.icon-qq:before {
  content: "\e60a";
}

.icon-weixin:before {
  content: "\e60b";
}

.icon-rectangle:before {
  content: "\e60c";
}

.icon-search:before {
  content: "\e60d";
}

.icon-save:before {
  content: "\e628";
}

.icon-circle_b:before {
  content: "\e60f";
}

.icon-circle_s:before {
  content: "\e610";
}

.icon-voice:before {
  content: "\e612";
}

.icon-plus:before {
  content: "\e613";
}

.icon-minus:before {
  content: "\e611";
}

.icon-warn:before {
  content: "\e627";
}

.icon-round:before {
  content: "\e615";
}

.icon-goUp:before {
  content: "\e616";
}

.icon-read:before {
  content: "\e617";
}

.icon-service:before {
  content: "\e618";
}

.icon-right:before {
  content: "\e679";
}

.icon-prompt:before {
  content: "\e64c";
}

.icon-defraud:before {
  content: "\e63b";
}

.icon-illegal:before {
  content: "\e638";
}

.icon-rules:before {
  content: "\e62d";
}

.icon-steal:before {
  content: "\e636";
}

.icon-others:before {
  content: "\e639";
}

.icon-record:before {
  content: "\e63a";
}

.icon-progress:before {
  content: "\e650";
}

.icon-xcx:before {
  content: "\e64e";
}

.icon-notice:before {
  content: "\e64f";
}

#rkCustomeBtn {
  z-index: 9999;
}

.copyright_box {
  padding-top: 20px;
  padding-bottom: 50px;
  display: flex;
}

.copyright_text {
  margin-left: 18px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  font-size: 12px;
}

.copyright_text span {
  padding: 6px;
  color: #cccccc;
}

.copyright_link {
  margin-bottom: 10px;
  color: #333;
  display: flex;
  font-size: 12px;
  align-items: center;
}

.copyright_link a:hover {
  color: #1a98cf;
}

.copyright_text p {
  color: #808080;
}
</style>