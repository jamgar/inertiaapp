<template>
  <form @submit.prevent="$emit('submit')" class="rounded-sm bg-white shadow px-8 py-6">
    <label for="title" class="block text-gray-700 text-sm font-bold mb-2">Title</label>
    <input type="text" id="title" v-model="form.title" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" />
    <label for="content" class="block text-gray-700 text-sm font-bold mb-2">Content:</label>
    <textarea name="content" id="content" cols="30" rows="10" v-model="form.content" class="appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"></textarea> 
    <button type="submit" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">Submit</button>
    <a href="/notes" role="button" class="inline-block align-baseline font-bold ml-2 text-sm text-gray-500 hover:text-gray-800">Cancel</a>
  </form>
</template>

<script>
  export default {
    props: {
      value: {
        type: Object,
        required: true
      }
    },
    computed: {
      form: {
        get() {
          return this.value
        },
        set(val) {
          this.$emit('input', val)
        }
      }
    }
  }
</script>