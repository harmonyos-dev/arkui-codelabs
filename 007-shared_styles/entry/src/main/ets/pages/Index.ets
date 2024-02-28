@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(20)
          // 使用 @Styles 共享样式
          .makeItFuckingBIG()
          // 使用 @Extend 声明的 Text 组件专属样式
          .makeTextREDandBOLDandUnderline()

        Button('click me!')
          .margin({
            top: 30,
          })
          // 多态样式，分别指定每个状态的样式
          // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/arkts-statestyles-0000001482592098-V2
          .stateStyles({
            pressed: {
              .backgroundColor('red')
              .scale({
                x: 2,
                y: 2,
              })
            },
            normal: {
              .backgroundColor('blue')
              .scale({
                x: 1,
                y: 1,
              })
            }
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}

// @Styles 不能有参数
// See: https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/arkts-style-0000001473856690-V2
@Styles function makeItFuckingBIG() {
  .scale({
    x: 2,
    y: 2,
    z: 2,
  })
}

// @Extend 需要传入一个原生组件名称，不能是自定义组件
// See: https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/arkts-extend-0000001473696678-V2
@Extend(Text) function makeTextREDandBOLDandUnderline() {
  .fontColor('red')
  .fontWeight(FontWeight.Bolder)
  .decoration({
    type: TextDecorationType.Underline
  })
}