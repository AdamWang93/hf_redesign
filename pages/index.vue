<template lang="pug">
  div
    div(class="header-picture")
      div(class="head-picture-hover")
        div(class="head-picture-text") 111
</template>

<script>
export default {
  components: {}
}
</script>

<style lang="stylus" scoped>
// .header-picture-container: {
// background-color: rgba(0, 0, 0, 0.5);
// }
.header-picture {
  height: 460px;
  background: url('../static/home/header-cloth.jpg');
}

.head-picture-hover {
  height: 100%;
  width: 100%;
  background-color: rgba(0, 0, 0, 0.5);
}

.head-picture-text {
  margin: auto;
  width: 30rem;
  position: relative;
  top: 50%;
}
</style>


