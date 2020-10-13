<template>
  <div class="row">
    <div class="col-md-9">
      <input type="file" v-on:change="onImageChange" class="form-control" />
    </div>
    <div class="col-md-3">
      <button class="btn btn-success btn-block" @click="uploadImage">Upload Image</button>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  name: "Profile",
  data() {
    return {
      avatar: ""
    };
  },

  methods: {
    onImageChange(e) {
      let files = e.target.files || e.dataTransfer.files;
      if (!files.length) return;

      this.createImage(files[0]);
    },
    createImage(file) {
      let reader = new FileReader();
      let vm = this;
      reader.onload = e => {
        vm.avatar = e.target.result;
      };
      reader.readAsDataURL(file);
    },
    uploadImage() {
      let token = document
        .getElementsByName("csrf-token")[0]
        .getAttribute("content");
      axios.defaults.headers.common["X-CSRF-Token"] = token;
      axios.defaults.headers.common["Accept"] = "application/json";

      axios
        .post("/api/v1/user/profiles", { avatar: this.avatar })
        .then(response => {
          if (response.data.success) {
            alert(response.data.success);
          }
        });
    }
  }
};
</script>
<style>
</style>
