<template>
  <nav class="w-full flex justify-between bg-white py-4 px-6">
    <div>
      <span class="text-teal-500 font-bold">InertiaApp</span>
    </div>
    <div class="font-medium flex">
      <inertia-link href="/" class="text-gray-600 hover:text-gray-800 px-2 mr-2">Home</inertia-link>
      <span v-if="!$page.props.auth.user">
        <a :href="$routes.new_user_session()" class="text-gray-600 hover:text-gray-800 px-2">Sign In</a>
        <a :href="$routes.new_user_registration()" class="text-gray-600 hover:text-gray-800 px-2">Sign Up</a>
      </span>
      <span v-else>
        <inertia-link href="/notes" class="text-gray-600 hover:text-gray-800 px-2">Notes</inertia-link>
        <inertia-link :href="$routes.destroy_user_session()" method="delete" class="text-gray-600 hover:text-gray-800 px-2">Sign Out</inertia-link>
      </span>
    </div>
  </nav>
</template>

<script>
  export default {}
</script>