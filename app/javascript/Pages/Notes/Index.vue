<template>
  <div class="mt-6">
    <h2 class="text-2xl text-center">Notes</h2>
    <a href="/notes/new" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">New Note</a>
    <table class="table-auto bg-white mx-auto w-full mt-4 shadow">
      <thead>
        <tr>
          <th class="border px-4 py-2">Title</th>
          <th class="border px-4 py-2">Content</th>
          <th class="border px-4 py-2">Action</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="note in notes" :key="note.id">
          <td class="border px-4 py-2">{{ note.title }}</td>
          <td class="border px-4 py-2">{{ note.content }}</td>
          <td class="border px-4 py-2">
            <inertia-link :href="$routes.note(note.id)" class="text-blue-700 mr-2">Show</inertia-link>
            <inertia-link :href="$routes.edit_note(note.id)" class="text-green-700 mr-2">Edit</inertia-link>
            <a href="#" @click="onDelete(note.id)" class="text-red-700">Delete</a>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import Layout from '@/Layouts/ApplicationLayout'
  export default {
    props: {
      notes: {
        type: Array,
        required: true,
      }
    },
    layout: Layout,
    methods: {
      onDelete(id) {
        this.$inertia.delete(this.$routes.note(id), {
          onBefore: () => confirm('Are you sure you want to delete this note?'),
        })
      }
    }
  }
</script>