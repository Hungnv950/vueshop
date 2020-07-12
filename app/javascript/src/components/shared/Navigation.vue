<template>
  <div>
    <nav>
      <router-link class="spacing" v-for="routes in links"
      v-bind:key="routes.id"
      :to="`${routes.page}`">{{routes.text}}</router-link>
    </nav>
  </div>
</template>

<script>
export default {
  name: 'Navigation',
  data() {
    return {
      links: [
        {
          id: 1,
          text: 'Home',
          page:'/'
        },
        {
          id: 2,
          text: 'About',
          page:'/About'
        },
        {
          id: 3,
          text: 'Contact',
          page:'/Contact'
        }
      ]
    }
  }
}
</script>
<style>
.spacing {
  margin-right: 10px;
}
</style>
