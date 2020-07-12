<template>
  <div id="app">
    <Navigation></Navigation>
    <br>
    <router-view/>
  </div>
</template>

<script>
  import Navigation from 'src/components/shared/Navigation'

  export default {
    name: 'app',
    components: {
      'Navigation': Navigation
    }
  }
</script>

<style scoped>

</style>
