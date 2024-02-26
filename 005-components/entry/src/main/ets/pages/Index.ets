@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row(){
        // 按钮组件，可快速创建不同样式的按钮。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-button-0000001427584848-V2
        Button() {
          Text('Click me')
        }

        // 空白填充组件，在容器主轴方向上，空白填充组件具有自动填充容器空余部分的能力。仅当父组件为Row/Column/Flex时生效。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-blank-0000001428061724-V2
        Blank()

        // 提供多选框组件，通常用于某选项的打开或关闭。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-checkbox-0000001427744808-V2
        Checkbox()
      }
      .width('100%')

      Row() {
        // 日期选择器组件，用于根据指定日期范围创建日期滑动选择器。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-datepicker-0000001478061689-V2
        DatePicker({
          start: new Date('2020-01-01'),
          end: new Date('2020-12-31')
        })
      }
      .width('100%')
      .height(200)

      // 提供分隔器组件，分隔不同内容块/内容元素。
      // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-divider-0000001477981189-V2
      Divider()

      Row() {
        // Image为图片组件，常用于在应用中显示图片。Image支持加载string、PixelMap和Resource类型的数据源，支持png、jpg、bmp、svg和gif类型的图片格式。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-image-0000001428061728-V2
        Image($r("app.media.icon"))
          .width(100)
          .height(100)

        // 用于显示加载动效的组件。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-loadingprogress-0000001427744812-V2
        LoadingProgress()
          .width(100)
          .height(100)

        // 跑马灯组件，用于滚动展示一段单行文本，仅当文本内容宽度超过跑马灯组件宽度时滚动。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-marquee-0000001478181401-V2
        Marquee({
          start: true,
          src: "this is Marquee"
        })
          .width(100)
          .height(100)

        // 以垂直列表形式显示的菜单。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-menu-0000001493903960-V2
        // Menu() {
        //   MenuItem({
        //     content: 'item1'
        //   })
        //   MenuItem({
        //     content: 'item2'
        //   })
        //   MenuItem({
        //     content: 'item3'
        //   })
        // }
        //   .width(100)
        //   .height(100)
      }
        .width('100%')
        .height(100)

      Row() {
        // 进度条组件，用于显示内容加载或操作处理等进度。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-progress-0000001427584856-V2
        Progress({
          value: 50,
          total: 100,
        })
          .width(100)

        // 用于显示单个二维码的组件。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-qrcode-0000001427744816-V2
        QRCode("HarmonyOS-dev")
          .width(100)

        Column() {
          // 单选框，提供相应的用户交互选择项。
          // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-radio-0000001478181405-V2
          Radio({value: "radio1", group: "group1"})
            .width(50)
          Radio({value: "radio2", group: "group1"})
            .width(50)
        }
          .width(50)

        // 提供在给定范围内选择评分的组件。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-rating-0000001478341141-V2
        Rating({
          rating: 3,
        })
      }
        .width('100%')
        .height(100)

      Row() {
        // 富文本组件，解析并显示HTML格式文本。
        // https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-richtext-0000001477981197-V2
        RichText("<h1>Hello</h1> <i>World</i>")
          .width(100)

        // 搜索框组件，适用于浏览器的搜索内容输入框等应用场景。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-search-0000001428061740-V2
        Search({
          value: "search"
        })
          .width(100)

        // 提供下拉选择菜单，可以让用户在多个选项之间选择。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-select-0000001427584860-V2
        Select([
          {value: "option1"},
          {value: "option2"},
          {value: "option3"},
        ])
          .width(100)
      }
        .height(100)

      Row() {
        // 滑动条组件，通常用于快速调节设置值，如音量调节、亮度调节等应用场景。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-slider-0000001427744820-V2
        Slider({
          value:50,
          min: 0,
          max: 100,
        })
          .width(100)

        Text() {
          // 作为Text组件的子组件，用于显示行内文本的组件。
          // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-span-0000001478181409-V2
          Span('Hello')
          Span('World')
        }
          .width(100)

        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-stepper-0000001478341145-V2#ZH-CN_TOPIC_0000001574128481__示例
        // Stepper({
        //   index: 0,
        // }) {
        //   StepperItem()
        //     .prevLabel("prev")
        //     .nextLabel("next")
        //     .status(ItemState.Normal)
        // }
        //   .width(100)
      }

      Row() {
        // 显示一段文本的组件。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-text-0000001477981201-V2
        Text("Hello World")
          .width(100)

        // 多行文本输入框组件，当输入的文本内容超过组件宽度时会自动换行显示。
        // 高度未设置时，组件无默认高度，自适应内容高度。宽度未设置时，默认撑满最大宽度。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-textarea-0000001427902464-V2
        TextArea({
          placeholder: "TextArea"
        })
          .width(100)

        // TextClock组件通过文本将当前系统时间显示在设备上。支持不同时区的时间显示，最高精度到秒级。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-textclock-0000001428061744-V2
        TextClock({
          timeZoneOffset: 8,
        })
          .width(100)
      }
        .height(100)

      Row() {
        // 单行文本输入框组件。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-textinput-0000001427584864-V2
        TextInput({placeholder: "TextInput"})
          .width(100)

        // 滑动选择文本内容的组件。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-textpicker-0000001427744824-V2
        TextPicker({
          range: ["option1", "option2", "option3"]
        })
          .width(100)

        // 通过文本显示计时信息并控制其计时器状态的组件。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-texttimer-0000001478181413-V2
        TextTimer()
          .width(100)
      }
        .height(100)

      Row() {
        // 时间选择组件，根据指定参数创建选择器，支持选择小时及分钟。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-timepicker-0000001478341149-V2
        TimePicker()
          .width(100)
        // 组件提供勾选框样式、状态按钮样式及开关样式。
        // See: https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/ts-basic-components-toggle-0000001478061705-V2
        Toggle({
          type: ToggleType.Switch
        })
          .width(100)
      }
    }
    .height('100%')
  }
}