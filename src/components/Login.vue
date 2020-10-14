<template>
  <div id="box">
    <div class="bg">
      <div id="login">
        <div class="logo">
            <img src="../assets/images/logo.png" alt="">
        </div>
        <div class="desc">使用九号机器人账号登录</div>

        <form method="post" action="/login">
          <div class="el-input">
            <!---->
            <input
              type="text"
              autocomplete="off"
              name="username"
              placeholder="邮箱/用户名/手机号"
              class="el-input__inner"
              v-model='username'
            /><!----><!----><!----><!---->
          </div>
          <div class="el-input" style="margin-top: 20px">
            <!----><input
              type="password"
              autocomplete="off"
              name="password"
              placeholder="密码"
              class="el-input__inner"
              v-model='userpassword'
            /><!----><!----><!----><!---->
          </div>
          <a href="#/codeLogin" class="code-login">手机验证码登录</a>
          <a href="#/forget" class="forget">忘记密码</a>
          <div class="btns">
            <button
              disabled="disabled"
              type="button"
              class="el-button el-button--primary is-disabled"
            >
              <!----><!---->
              <span @click='login'>登录</span>
            </button>
            <button
              type="button"
              class="el-button el-button--default"
              style="float: right"
            >
              <!----><!---->
              <span>注册</span>
            </button>
          </div>
        </form>
        <br />
        <hr />

        <div class="sns">
          <div>
            <img src="" alt="" />
          </div>

          <div>
            <img src="" alt="" />
          </div>

          <div>
            <img src="" alt="" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
    data(){
        return{
            username:'',
            userpassword:''
        }
    },
    methods:{
        login(){
            this.axios.get('/login',{
                params:{username:this.username,userpassword:this.userpassword}
            }).then(res=>{
                if(res.data.code=='1'){
                    this.$router.push('/')
                    localStorage.setItem('isLogined','1')
                    this.$store.commit('logined',res.data.result[0].uname)
                }else{
                    alert('账户或密码错误')
                }
            })
        }
    }
};
</script>

<style scoped>
#box {
  width: 620px;
  height: 600px;
  margin: 0 auto;
}
.bg {
  background: #fff;
  border-radius: 8px;
}
#login {
  padding: 60px 120px;
}
#login .logo {
  font-size: 88px;
  text-align: center;
  font-size: 0;
}
#login .desc {
  color: #303133;
  font-size: 18px;
  line-height: 36px;
  font-weight: 600;
  margin: 45px 0 50px;
  text-align: center;
}
form {
  display: block;
  margin-top: 0em;
}
.el-input {
  position: relative;
  font-size: 14px;
  display: inline-block;
  width: 100%;
}
.el-input__inner {
  -webkit-appearance: none;
  background-color: #fff;
  background-image: none;
  border-radius: 4px;
  border: 1px solid #dcdfe6;
  box-sizing: border-box;
  color: #606266;
  display: inline-block;
  font-size: inherit;
  height: 40px;
  line-height: 40px;
  outline: 0;
  padding: 0 15px;
  transition: border-color 0.2s cubic-bezier(0.645, 0.045, 0.355, 1);
  width: 100%;
}
#login .code-login {
  float: left;
  color: #606266;
}

#login .code-login,
#login .forget {
  margin-top: 5px;
  font-size: 12px;
  text-decoration: none;
}

#login .forget {
  float: right;
  color: #909399;
}
#login .btns {
  margin-top: 36px;
}
#login .btns .el-button {
  width: 160px;
}
.el-button {
  display: inline-block;
  line-height: 1;
  white-space: nowrap;
  cursor: pointer;
  background: #fff;
  border: 1px solid #dcdfe6;
  color: #606266;
  -webkit-appearance: none;
  text-align: center;
  box-sizing: border-box;
  outline: 0;
  margin: 0;
  transition: 0.1s;
  font-weight: 500;
  -ms-user-select: none;
  padding: 12px 20px;
  font-size: 14px;
  border-radius: 4px;
  background-color: skyblue;
}
#login .sns {
  display: -ms-flexbox;
  display: flex;
}
#login .sns > div {
  -ms-flex: 1;
  flex: 1;
  text-align: center;
  font-size: 0;
}
#login .sns svg {
  font-size: 40px;
  border-radius: 100%;
  cursor: pointer;
}
</style>