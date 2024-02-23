@Entry     // @Entry 标记的struct 为页面的入口组件
@Component // @Component 标记的 struct 为组件
struct Index {
  // @State 用于创建响应式状态
  @State message: string = 'Hello World'
  build() {
    // Row 就是一行
    Row() {
      // Column 就是一列
      Column() {

        // Text 组件在屏幕上展示一段文字内容
        Text(this.message)
          .fontSize(50) // fontSize 属性改变文字大小
          .fontWeight(FontWeight.Bold) // fontWeight 属性改变字重
      }
      .width('100%')  // 100% 的宽度占满父容器（Row），使 Column 的内容横向居中（默认行为）
    }
    .height('100%')   // 100% 的高度占满整个父容器，由于 Row 就是最顶层的容器，所以 Row 的内容会相对于整个屏幕纵向居中（默认行为）
  }
}