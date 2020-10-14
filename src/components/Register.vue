<template>
  <div id="box">
    <div class="bg">
      <div id="reg">
        <div class="head">
            <img src="../assets/images/logo.png" alt="">
          <span class="change"> 切换邮箱注册 </span>
        </div>
        <div class="form">
          <div class="title">注册账号</div>
          <div class="phone-input" placeholder="请输入手机号">
            <div>
              <div
                class="input-with-select el-input el-input-group el-input-group--prepend error"
              >
                <input
                  type="text"
                  autocomplete="off"
                  maxlength="11"
                  placeholder="请输入手机号"
                  class="el-input__inner"
                  style='border-radius:5px'
                  v-model="phone"
                /><!----><!----><!----><!---->
              </div>
            </div>
          </div>
          <div class="desc">
            成功注册账号后，选择的国家/地区将不能修改，您的数据将保存在该国家/地区对应的服务器中。
          </div>
          <!---->
          <div>
            <div
              class="verify-input"
              placeholder="输入验证码"
              maxlength="6"
              style="width: 220px"
            >
              <div>
                <div class="el-input error">
                  <!----><input
                    type="text"
                    autocomplete="off"
                    placeholder="输入验证码"
                    maxlength="6"
                    class="el-input__inner"
                  /><!----><!----><!----><!---->
                </div>
              </div>
            </div>
            <button
              disabled="disabled"
              type="button"
              class="el-button el-button--primary el-button--default is-disabled"
              style="float: right;margin-top:-40px;margin-bottom:30px"
            >
              <span>发送验证码</span>
            </button>
          </div>
          <div class="verify-input">
            <div>
              <div class="el-input">
                <!----><input
                  type="password"
                  autocomplete="off"
                  placeholder="请输入密码"
                  class="el-input__inner"
                  style="margin-bottom:30px"
                  v-model="upwd"
                /><!----><!----><!----><!---->
              </div>
            </div>
          </div>
          <div
            class="verify-input"
            isblurcheck="true"
            style="margin-bottom:30px"
          >
            <div>
              <div class="el-input">
                <!----><input
                  type="password"
                  autocomplete="off"
                  placeholder="再次输入密码"
                  v-model="reupwd"
                  isblurcheck="true"
                  class="el-input__inner"
                /><!----><!----><!----><!---->
              </div>
            </div>
          </div>
          <div class="check">
            <label
              role="checkbox"
              aria-checked="true"
              class="el-checkbox is-checked"
              ><span aria-checked="mixed" class="el-checkbox__input is-checked"
                ><span class="el-checkbox__inner"></span
                ><input
                  type="checkbox"
                  aria-hidden="true"
                  class="el-checkbox__original"
                  value="" /></span
              ><span class="el-checkbox__label">
                注册账号即表示您同意并愿意遵守
                <!----></span
              ></label
            >
            <a href="#"> 用户协议 </a>
            和
            <a href="#"> 隐私政策 </a>
          </div>
          <div class="btn-con">
            <button
              disabled="disabled"
              type="button"
              class="el-button el-button--primary is-disabled"
              style="width: 100%"
            >
              <span @click="register"> 立即注册 </span>
            </button>
          </div>
          <div class="login-tip">
            <span>已有账号？去</span> <a href="javascript:;">登录</a>
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
            reupwd:'',
            upwd:'',
            phone:''
        }
    },
    methods:{
        register(){
            this.axios.get('/register',{
                params:{reupwd:this.reupwd,upwd:this.upwd,phone:this.phone}
            }).then(res=>{
                if(res.data.code=='1'){
                    alert('注册成功')
                }else{
                    alert('注册失败')

                }
            })
        }
    }
};
</script>

<style scoped>
#box {
  width: 600px;
  height: 600px;
  margin: 0 auto;
}
.bg {
  background: #fff;
  border-radius: 8px;
}
#reg .head {
  padding: 20px 20px 0 20px;
}
#reg .head svg {
  width: 189px;
  height: 33px;
}
#reg .change {
  margin: 10px 10px 0;
  font-size: 14px;
  color: #1989fa;
  cursor: pointer;
  float: right;
}
#reg .form {
  padding: 45px 120px;
}
#reg .title {
  color: #303133;
  font-size: 18px;
  line-height: 25px;
  text-align: center;
  margin-bottom: 30px;
  font-weight: 600;
}
.el-input-group {
  line-height: normal;
  display: inline-table;
  width: 100%;
  border-collapse: separate;
  border-spacing: 0;
}

.el-input {
  position: relative;
  font-size: 14px;
  display: inline-block;
  width: 100%;
}
.el-input-group__prepend {
  border-right: 0;
}

.el-input-group--append .el-input__inner,
.el-input-group__prepend {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}
.el-input-group__append,
.el-input-group__prepend {
  background-color: #f5f7fa;
  color: #909399;
  vertical-align: middle;
  display: table-cell;
  position: relative;
  border: 1px solid #dcdfe6;
  border-radius: 4px;
  padding: 0 20px;
  width: 1px;
  white-space: nowrap;
}
.el-input-group__append .el-button,
.el-input-group__append .el-select,
.el-input-group__prepend .el-button,
.el-input-group__prepend .el-select {
  display: inline-block;
  margin: -10px -20px;
}

.el-select {
  display: inline-block;
  position: relative;
}
.el-input-group__append button.el-button,
.el-input-group__append div.el-select .el-input__inner,
.el-input-group__append div.el-select:hover .el-input__inner,
.el-input-group__prepend button.el-button,
.el-input-group__prepend div.el-select .el-input__inner,
.el-input-group__prepend div.el-select:hover .el-input__inner {
  border-color: transparent;
  background-color: transparent;
  color: inherit;
  border-top: 0;
  border-bottom: 0;
}
.el-input-group--prepend .el-input__inner,
.el-input-group__append {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
}

.el-input--suffix .el-input__inner {
  padding-right: 30px;
}
.el-select .el-input__inner {
  cursor: pointer;
  padding-right: 35px;
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
.el-input__suffix {
  right: 5px;
  transition: all 0.3s;
}

.el-input__prefix,
.el-input__suffix {
  position: absolute;
  top: 0;
  height: 100%;
  color: #c0c4cc;
  text-align: center;
}
.el-input__suffix,
.el-tree.is-dragging .el-tree-node__content * {
  pointer-events: none;
}
.el-select-dropdown {
  position: absolute;
  z-index: 1001;
  border: 1px solid #e4e7ed;
  border-radius: 4px;
  background-color: #fff;
  box-shadow: 0 2px 12px 0 rgba(0, 0, 0, 0.1);
  box-sizing: border-box;
  margin: 5px 0;
}
.el-scrollbar {
  overflow: hidden;
  position: relative;
}
.el-scrollbar__wrap {
  overflow: scroll;
  height: 100%;
}
.el-select-group__wrap:not(:last-of-type) {
  padding-bottom: 24px;
}
.el-select-dropdown__wrap {
  max-height: 274px;
}
.el-select-dropdown__list {
  list-style: none;
  padding: 6px 0;
  margin: 0;
  box-sizing: border-box;
}
li {
  display: list-item;
  text-align: -webkit-match-parent;
}
.el-select-group__wrap {
  position: relative;
  list-style: none;
  margin: 0;
  padding: 0;
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

input {
  text-rendering: auto;
  color: initial;
  letter-spacing: normal;
  word-spacing: normal;
  text-transform: none;
  text-indent: 0px;
  text-shadow: none;
  display: inline-block;
  text-align: start;
  -webkit-appearance: textfield;
  background-color: white;
  -webkit-rtl-ordering: logical;
  cursor: text;
  margin: 0em;
  font: 400 13.3333px Arial;
  padding: 1px 0px;
  border-width: 2px;
  border-style: inset;
  border-color: initial;
  border-image: initial;
}
.phone-input .hide {
  visibility: hidden;
}

.phone-input .error-tip {
  padding-top: 2px;
  padding-left: 102px;
  color: #f56c6c;
  font-size: 12px;
  line-height: 17px;
  height: 20px;
  box-sizing: border-box;
}
.phone-input .error-tip i {
  font-size: 14px;
  line-height: 17px;
  vertical-align: top;
}

[class*=" el-icon-"],
[class^="el-icon-"] {
  font-family: element-icons !important;
  font-style: normal;
  font-weight: 400;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  vertical-align: baseline;
  display: inline-block;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
#reg .desc {
  font-size: 12px;
  line-height: 16px;
  color: #909399;
  margin-bottom: 20px;
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
}
.verify-input .hide {
  visibility: hidden;
}
.verify-input .error-tip {
  padding-top: 2px;
  color: #f56c6c;
  font-size: 12px;
  line-height: 17px;
  height: 20px;
  box-sizing: border-box;
}
#reg .check {
  font-size: 13px;
  color: #909399;
}
.el-checkbox__input {
  white-space: nowrap;
  cursor: pointer;
  outline: 0;
  line-height: 1;
  vertical-align: middle;
}

.el-checkbox,
.el-checkbox__input {
  position: relative;
  display: inline-block;
}
input[type="checkbox" i] {
  background-color: initial;
  cursor: default;
  -webkit-appearance: checkbox;
  box-sizing: border-box;
  margin: 3px 3px 3px 4px;
  padding: initial;
  border: initial;
}
#reg a {
  font-size: 13px;
  color: #1989fa;
  text-decoration: none;
}
#reg .btn-con {
  margin-top: 20px;
}
primary.is-disabled:focus,
.el-button--primary.is-disabled:hover {
  color: #fff;
  background-color: #a0cfff;
  border-color: #a0cfff;
}
.login-tip {
  text-align: right;
  color: #909399;
  font-size: 13px;
  margin-top: 10px;
}
</style>