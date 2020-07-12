<template>
  <div id="app">

    <Navigation></Navigation>
    <div class="container">
      <router-view/>
    </div>
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright © Your Website 2020</p>
      </div>
    </footer>
  </div>
</template>

<script>
  import Navigation from 'src/components/shared/Navigation'

  export default {
    name: 'app',
    components: {
      'Navigation': Navigation
    },
    data(){
      return {
        name: "Hung dep trai"
      }
    }
  }
</script>

<style>
  body {
    padding-top: 56px;
  }
</style>
