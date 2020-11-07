<template>
  <div>
    <!-- Page Content -->
    <div class="row">
      <div class="col-lg-3">
        <h1 class="my-4">Shop Name</h1>
        <div class="list-group">
          <a href="#" class="list-group-item">Category 1</a>
          <a href="#" class="list-group-item">Category 2</a>
          <a href="#" class="list-group-item">Category 3</a>
        </div>
      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">
        <div
          id="carouselExampleIndicators"
          class="carousel slide my-4"
          data-ride="carousel"
        >
          <ol class="carousel-indicators">
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="0"
              class="active"
            ></li>
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="1"
              class=""
            ></li>
            <li
              data-target="#carouselExampleIndicators"
              data-slide-to="2"
              class=""
            ></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img
                class="d-block img-fluid"
                src="http://placehold.it/900x350"
                alt="First slide"
              />
            </div>
            <div class="carousel-item">
              <img
                class="d-block img-fluid"
                src="http://placehold.it/900x350"
                alt="Second slide"
              />
            </div>
            <div class="carousel-item">
              <img
                class="d-block img-fluid"
                src="http://placehold.it/900x350"
                alt="Third slide"
              />
            </div>
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="prev"
          >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleIndicators"
            role="button"
            data-slide="next"
          >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">
          <div
            class="col-lg-4 col-md-6 mb-4"
            v-for="(product, index) in products"
            v-bind:key="index"
          >
            <div class="card h-100">
              <a v-bind:href="PRODUCTS_API + product.id"
                ><img class="card-img-top" :src="product.thumbnail_url" alt=""
              /></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">{{ product.title }} </a>
                </h4>
                <h5>{{ product.price }}</h5>
                <p class="card-text">{{ product.description }}</p>
              </div>
              <div class="card-footer">
                <small class="text-muted">★ ★ ★ ★ ☆</small>
              </div>
            </div>
          </div>
        </div>
        <!-- /.row -->
      </div>
      <!-- /.col-lg-9 -->
    </div>
    <!-- /.row -->
    <scroll-loader
      :loader-method="getProducts"
      :loader-enable="loadMore"
    ></scroll-loader>
  </div>
</template>

<script>
import { PRODUCTS_API } from "../../constants/API";
import axios from "axios";

export default {
  name: "Home",
  data() {
    return {
      products: [],
      PRODUCTS_API: PRODUCTS_API,
      page: 1,
      loadMore: true,
      page: 1,
      pageSize: 9,
    };
  },
  created() {},
  mounted() {
    this.getProducts();
  },
  methods: {
    getProducts() {
      axios
        .get(PRODUCTS_API, {
          params: {
            page: this.page++,
            per_page: this.pageSize,
          },
        })
        .then((res) => {
          res.data && (this.products = [...this.products, ...res.data]);
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
