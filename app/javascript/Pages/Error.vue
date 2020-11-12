<template>
  <div class="flex items-center h-screen">
    <div class="text-center w-full">
      <h1 class="text-5xl font-medium text-teal-500">{{ title }}</h1>
      <div class="text-xl font-bold text-gray-700">{{ description }}</div>
    </div>
  </div>
</template>

<script>
import Layout from '@/Layouts/ApplicationLayout'
export default {
  props: {
    status: String,
  },
  layout: Layout,
  computed: {
    title() {
      return {
        503: '503: Service Unavailable',
        500: '500: Server Error',
        404: '404: Page Not Found',
        403: '403: Forbidden',
      }[this.status]
    },
    description() {
      return {
        503: 'Sorry, we are doing some maintenance. Please check back soon.',
        500: 'Whoops, something went wrong on our servers.',
        404: 'Sorry, the page you are looking for could not be found.',
        403: 'Sorry, you are forbidden from accessing this page.',
      }[this.status]
    },
  },
}
</script>