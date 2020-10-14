import Vue from 'vue'
import VueRouter from 'vue-router'
import Index from '../views/Index'
import Header from "../components/Header"
import Footer from "../components/Footer"
import Login  from '../components/Login'
import Register from '../components/Register';
import Details from '../views/Details'
import Cart from '../views/Cart'

Vue.component("my-header",Header)
Vue.component("my-footer",Footer)


Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    component: Index
  },
  {
    path:'/login',
    component:Login
  },
  {
    path:'/register',
    component:Register
  },
  {
    path:'/details',
    component:Details
  },
  {
    path:'/cart',
    component:Cart
  }
  // {
  //   path: '/index',
  //   // route level code-splitting
  //   // this generates a separate chunk (about.[hash].js) for this route
  //   // which is lazy-loaded when the route is visited.
  //   component: () => import(/* webpackChunkName: "about" */ '../views/Index.vue')
  // }
]

const router = new VueRouter({
  routes
})

export default router
