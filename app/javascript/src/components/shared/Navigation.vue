<template>
  <div>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <router-link to="/" class="navbar-brand">Home</router-link>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarResponsive"
          aria-controls="navbarResponsive"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <router-link to="/">
              <li class="nav-item active">
                <a class="nav-link" href="/"
                  >Home
                  <span class="sr-only">(current)</span>
                </a>
              </li>
            </router-link>
            <li class="nav-item" v-for="routes in links">
              <router-link
                v-bind:key="routes.id"
                :to="`${routes.page}`"
                class="nav-link"
                >{{ routes.text }}
              </router-link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </div>
</template>

<script>
export default {
  name: "Navigation",
  data() {
    return {
      links: [
        {
          id: 2,
          text: "About",
          page: "/about",
        },
        {
          id: 3,
          text: "Contact",
          page: "/contact",
        },
      ],
    };
  },
};
</script>
<style>
.spacing {
  margin-right: 10px;
}
</style>
