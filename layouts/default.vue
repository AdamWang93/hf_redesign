<template lang="pug">
  v-app(class="hide-overflow")
    v-toolbar(absolute :class="layoutProperty.toolbarClass")
      v-toolbar-title(:class="layoutProperty.toolbarTitleClass") 鸿丰服装
      v-spacer
      ToolbarTransparentButton(v-for="item,index in PageConfig.layout.toolbar.buttons" 
        :key="index" 
        :icon="item.icon"
        :text="item.text"
        :type="layoutProperty.type"
        @click="onToolbarButtonClicked(item.routePath)")
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
        type: 0,
        toolbarTitleClass: 'toolbar-trans-title'
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
        //if scroll
        this.layoutProperty.toolbarClass = ''
        this.layoutProperty.type = 1
        this.layoutProperty.toolbarTitleClass = ''
      } else {
        //if scroll to top
        this.layoutProperty.toolbarClass = 'toolbar-trans'
        this.layoutProperty.type = 0
        this.layoutProperty.toolbarTitleClass = 'toolbar-trans-title'
      }
    },
    onToolbarButtonClicked(sPath) {
      routes.push({ path: sPath })
    }
  }
}
</script>

<style lang="stylus" scoped>
.toolbar-trans {
  background-color: transparent;
}

.toolbar-trans-title {
  color: white;
}
</style>

