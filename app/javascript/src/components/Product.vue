<template>
  <div>
    <p v-if="product === ''">Not found</p>
    <div v-else>
      {{ product.description }}
    </div>
  </div>
</template>

<script>
import { PRODUCTS_API } from "../constants/API";
import axios from "axios";
export default {
  name: "Product",
  data() {
    return {
      product: "",
    };
  },
  mounted() {
    this.getProduct();
  },
  methods: {
    getProduct() {
      axios
        .get(PRODUCTS_API + "/" + this.$route.params.id)
        .then((res) => {
          res.data && (this.product = res.data);
        })
        .catch((error) => {
          console.log(error);
        });
    },
  },
};
</script>
<style>
</style>
