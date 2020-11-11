<template>
  <main>
    <Navigation />
    <FlashMessages />
    <section class="container mx-auto">
      <slot />
    </section>
  </main>
</template>

<script>
import FlashMessages from '@/Shared/FlashMessages'
import Navigation from '@/Shared/Navigation'
  export default {
    components: {
      FlashMessages,
      Navigation
    }
  }
</script>
