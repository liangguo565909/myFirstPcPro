import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isLogined:localStorage.getItem('isLogined')?localStorage.getItem('isLogined'):0,
    username:localStorage.getItem('username')?localStorage.getItem('username'):''
  },
  mutations: {
    logined(state,payload){
      state.isLogined=1;
      state.username=payload;
      localStorage.setItem('isLogined','1')
      localStorage.setItem('username',payload)
    },
    logout(state){
      state.isLogined=0;
      state.username='';
      localStorage.setItem('isLogined','0')
      localStorage.setItem('username','')
    }
  },
  actions: {

  },
  modules: {
  }
})
