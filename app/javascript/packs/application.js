import Vue from 'vue'
import App from '../app.vue'
import router from '../src/router'
import {
  BootstrapVue,
  IconsPlugin
} from 'bootstrap-vue';
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

// Install BootstrapVue
Vue.use(BootstrapVue)
// Optionally install the BootstrapVue icon components plugin
Vue.use(IconsPlugin)

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    router: router,
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
