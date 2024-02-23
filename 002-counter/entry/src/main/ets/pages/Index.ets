@Entry
@Component
struct Index {
  // @State 使 count 成为响应式状态
  // 这意味着在下方 Button 点击事件回调
  // 里改变 count 的值的时候，下方 Text
  // 组件在屏幕上的内容也会随着 count 的
  // 改变而发生变化
  @State count: number = 0;

  build() {
    Row() {
      Column() {
        Text(this.count.toString())
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Stack().height(10)

        // Button 组件在屏幕上显示一个按钮，
        // 它的 onClick 方法接收一个点击事件回调
        // 用来在用户点击按钮的时候执行一些任务
        Button("+1")
          .onClick(() => {
            this.count += 1;
          })
          .width(70)

        // 占位
        Stack().height(5)

        Button("-1")
          .onClick(() => {
            this.count -= 1;
          })
          .width(70)
      }
      .width('100%')
    }
    .height('100%')
  }
}