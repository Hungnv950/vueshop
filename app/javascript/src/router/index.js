import Vue from 'vue'
import Router from 'vue-router'
import Home from '../components/pages/Home'
import About from '../components/pages/About'
import Contact from '../components/pages/Contact'
import Upload from '../components/pages/Upload'
import Profile from '../components/pages/Profile'
import Product from '../components/Product'

Vue.use(Router)

export default new Router({
  routes: [{
      path: '/',
      name: 'Home',
      component: Home
    },
    {
      path: '/about',
      name: 'About',
      component: About
    },
    {
      path: '/contact',
      name: 'Contact',
      component: Contact
    },
    {
      path: '/upload',
      name: 'Upload',
      component: Upload
    },
    {
      path: '/profile',
      name: 'Profile',
      component: Profile
    },
    {
      path: '/products/:id',
      name: 'Product',
      component: Product
    }
  ],
  mode: 'history'
})
