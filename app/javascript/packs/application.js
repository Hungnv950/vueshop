import Vue from 'vue'
import App from '../app.vue'
import router from '../src/router'

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    router: router,
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})
