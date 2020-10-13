<template>
  <div>
    <h2>Add an item</h2>
    <form enctype="multipart/form-data">
      <p>Name: </p><input v-model="inputName">
      <p>Description :</p><textarea v-model="inputDescription"></textarea>
      <p>Picture :</p><input type="file" ref="inputFile" @change=uploadFile()>
      <button @click=createItem>Create this Item !</button>
    </form>
  </div>
</template>

<script>
export default {
  name: 'itemsForm',
  data () {
    return {
      inputName: "",
      inputDescription: "",
      inputPicture: null
    }
  },
  methods: {
    // Saving the file in our data to send it !
    uploadFile: function() {
      this.inputPicture = this.$refs.inputFile.files[0];
    },

    // Collecting everything inside our FormData object
    createItem: function() {
      const params = {
        'name': this.inputName,
        'description': this.inputDescription,
        'picture': this.inputPicture
      }

      let formData = new FormData()

      Object.entries(params).forEach(
        ([key, value]) => formData.append(key, value)
      )

      // Finally, sending the POST request with our beloved Axios
      axios.post('/item', formData)
    }
  }
}
</script>
