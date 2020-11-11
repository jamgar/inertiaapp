<template>
  <div class="mt-5">
    <h2 class="text-2xl text-center">Edit Note</h2>
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
        this.$inertia.put(this.$routes.note(this.note.id), this.form)
      }
    }
  }
</script>