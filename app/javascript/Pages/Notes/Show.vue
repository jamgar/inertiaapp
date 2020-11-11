<template>
  <div class="mt-6">
    <h2 class="text-2xl text-center">{{ note.title }}</h2>
    <article class="rounded-sm bg-white shadow px-8 py-6 my-4">
      {{ note.content}}
    </article>
  </div>
</template>

<script>
import Layout from '@/Layouts/ApplicationLayout'
  export default {
    props: {
      note: {
        type: Object,
        required: true
      }
    },
    layout: Layout,
  }
</script>