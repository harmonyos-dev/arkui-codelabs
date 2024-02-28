@Entry
@Component
struct Index {
  // @State 组件内部响应式状态
  @State message: string = 'Hello World'
  @State count: number = 0

  @State autoCounter: number = 1;

  aboutToAppear() {
    // 通过 setInterval 来模拟异步请求
    setInterval(() => {
      this.autoCounter += 1;
    }, 1000);
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Text(this.count.toString())
          .fontSize(30)
          .fontWeight(FontWeight.Bold)

        Button('Count++')
          .onClick(() => this.count++)

        Stack()
          .height(2)
          .width('100%')
          .margin({
            top: 10,
            bottom: 10
          })
          .backgroundColor('black')

        CustomButton({
          text: this.autoCounter,
          // 一个 $ 用来获取索引，而不是传值
          count: $count,
          myOnClick: () => this.message = 'Button clicked'})
      }
      .width('100%')
    }
    .height('100%')
  }
}

// struct 的属性会自动出现在构造函数中，所以不需要显示声明构造函数
@Component
struct CustomButton {
  // @Prop 修饰的属性为从父组件到子组件的单向数据绑定
  @Prop text: number

  // @Link 修饰的属性为父组件与子组件到的双向数据绑定，父组件需传入需要绑定的状态的引用
  @Link count: number

  // 指定为 private 的属性依然能从外部传入
  // 比如:
  //  private myOnClick: () => void  外面还是可以 CustomButton({text: 'Click me', myOnClick: () => this.message = 'Button clicked'})
  // 如果不想外部传入, 可以使用 # 修饰
  // 比如:
  //  #myOnClick: () => void  外面就不能 CustomButton({text: 'Click me', #myOnClick: () => this.message = 'Button clicked'})
  myOnClick: () => void

  build() {
    Column() {
      Text('父组件Count: ' + this.count.toString())
        .fontSize(50)
        .fontWeight(FontWeight.Bold)

      Button('父组件Count++')
        .onClick(() => this.count++)

      Button(this.text + '')
        .onClick(this.myOnClick)
    }
  }
}