<template lang="pug">
  v-btn(flat :class="btnClass")
    <v-icon left>{{icon}}</v-icon>{{text}}
</template>

<script>
export default {
  props: {
    icon: String,
    text: String,
    type: Number //0 toolbar is transparent, 1 toolbar is not transparent.
  },
  computed: {
    btnClass() {
      return this.type === 0 ? 'toolbar-trans-btn' : 'toolbar-btn'
    }
    // btnClass() {
    //   // return this.type === 0 ? 'toolbar-trans-btn' : 'toolbar-btn'
    //   return 'toolbar-trans-btn'
    // }
  }
}
</script>

<style lang="stylus" scoped>
.toolbar-trans-btn:before {
  background-color: transparent;
}

.toolbar-btn:hover:before {
  background-color: transparent;
}
</style>


