<template lang="pug">
  v-app(class="hide-overflow")
    v-toolbar(absolute :class="layoutProperty.toolbarClass")
      v-toolbar-title 鸿丰服装
      v-spacer
      ToolbarTransparentButton(v-for="item,index in PageConfig.layout.toolbar.buttons" :key="index" :icon="item.icon" :text="item.text" :type="layoutProperty.type")
    v-content(id="app-content" class="scroll-y" :style="{maxHeight: layoutProperty.maxHeight + 'px'}")
      nuxt
</template>

<script>
import $ from 'jquery'
import ToolbarTransparentButton from '@/components/ToolbarTransparentButton'
import PageData from '@/utils/pageData'

export default {
  data() {
    return {
      layoutProperty: {
        maxHeight: 0,
        toolbarClass: 'toolbar-trans',
        type: 0
      },
      PageConfig: PageData
    }
  },
  components: {
    ToolbarTransparentButton
  },
  mounted() {
    this.layoutProperty.maxHeight = $(window).height()
    window.onresize = event => {
      this.layoutProperty.maxHeight = $(window).height()
    }

    $('#app-content')[0].addEventListener('scroll', this.handleScroll)
  },
  methods: {
    handleScroll() {
      if ($('#app-content').scrollTop() > 0) {
        this.layoutProperty.toolbarClass = ''
        this.layoutProperty.type = 1
      } else {
        this.layoutProperty.toolbarClass = 'toolbar-trans'
        this.layoutProperty.type = 0
      }
    }
  }
}
</script>

<style lang="stylus" scoped>
.toolbar-trans {
  background-color: transparent;
}
</style>

