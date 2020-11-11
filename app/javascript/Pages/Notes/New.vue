<template>
  <div class="mt-5">
    <h2 class="text-2xl text-center">New Note</h2>
    <NoteForm v-model="form" @submit="submit" />
  </div>
</template>

<script>
import NoteForm from './Form'
import Layout from '@/Layouts/ApplicationLayout'
  export default {
    components: {
      NoteForm
    },
    props: {
      note: {
        type: Object,
        required: true
      }
    },
    layout: Layout,
    data() {
      return {
        form: this.note
      }
    },
    methods: {
      submit() {
        // This is in a meta tag located within the head tags
        var token = document.querySelector('meta[name="csrf-token"]').content
        this.$inertia.post('/notes', this.form,
         {
          headers: { 'X-CSRF-Token': token }
         })
      }
    }
  }
</script>