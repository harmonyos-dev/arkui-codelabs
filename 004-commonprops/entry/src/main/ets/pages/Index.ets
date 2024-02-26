@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          /**
           * 通用事件
           * https://developer.huawei.com/consumer/cn/doc/harmonyos-references-V2/3_1_u901a_u7528_u4e8b_u4ef6-0000001478061661-V2
           */
          // min: api 7
          // 点击动作触发该回调，event返回值见ClickEvent对象说明。
          // 从API version 9开始，该接口支持在ArkTS卡片中使用。
          .onClick((event) => { console.log('onClick') })
          // min: api 7
          // 手指触摸动作触发该回调，event返回值见TouchEvent介绍。
          .onTouch((event) => { console.log('onTouch') })
          // min: api 7
          // 组件挂载显示时触发此回调。
          // 从API version 9开始，该接口支持在ArkTS卡片中使用。
          .onAppear(() => { console.log('onAppear') } )
          // min: api 7
          // 组件卸载消失时触发此回调。
          // 从API version 9开始，该接口支持在ArkTS卡片中使用。
          .onDisAppear(() => { console.log('onDisAppear') })
          // min: api 8
          // 第一次拖拽此事件绑定的组件时，触发回调。
          //   - event：拖拽事件信息，包括拖拽点坐标。
          //   - extraParams：拖拽事件额外信息，详见extraParams说明。
          // 返回值：当前跟手效果所拖拽的对象，用于显示拖拽时的提示组件。
          // 长按150ms可触发拖拽事件。优先级：长按手势配置时间小于等于150ms时，长按手势优先触发，否则拖拽事件优先触发。
          .onDragStart(() => { console.log('onDragStart') })
          // min: api 8
          // 拖拽进入组件范围内时，触发回调。
          //   - event：拖拽事件信息，包括拖拽点坐标。
          //   - extraParams：拖拽事件额外信息，详见extraParams说明。
          // 当监听了onDrop事件时，此事件才有效。
          .onDragEnter(() => { console.log('onDragEnter') })
          // min: api 8
          // 拖拽在组件范围内移动时，触发回调。
          //   - event：拖拽事件信息，包括拖拽点坐标。
          //   - extraParams：拖拽事件额外信息，详见extraParams说明。
          // 当监听了onDrop事件时，此事件才有效。
          .onDragMove(() => { console.log('onDragMove') })
          // min: api 8
          // 拖拽离开组件范围内时，触发回调。
          //   - event：拖拽事件信息，包括拖拽点坐标。
          //   - extraParams：拖拽事件额外信息，详见extraParams说明。
          // 当监听了onDrop事件时，此事件才有效。
          .onDragLeave(() => { console.log('onDragLeave') })
          // min: api 8
          // 绑定此事件的组件可作为拖拽释放目标，当在本组件范围内停止拖拽行为时，触发回调。
          //   - event：拖拽事件信息，包括拖拽点坐标。
          //   - extraParams：拖拽事件额外信息，详见extraParams说明。
          .onDrop(() => { console.log('onDrop') })
          // min: api 7
          // 绑定该方法的组件获焦后，按键动作触发该回调，event返回值见KeyEvent介绍。
          .onKeyEvent((event) => { console.log('onKeyEvent') })
          // min: api 8
          // 当前组件获取焦点时触发的回调。
          .onFocus(() => { console.log('onFocus') })
          // min: api 8
          // 当前组件失去焦点时触发的回调。
          .onBlur(() => { console.log('onBlur') })
          // min: api 8
          // 鼠标进入或退出组件时触发该回调。
          // isHover：表示鼠标是否悬浮在组件上，鼠标进入时为true, 退出时为false。
          .onHover(() => { console.log('onHover') })
          // min: api 8
          // 当前组件被鼠标按键点击时或者鼠标在组件上悬浮移动时，
          // 触发该回调，event返回值包含触发事件时的时间戳、鼠标按键、动作、鼠标位置在整个屏幕上的坐标和相对于当前组件的坐标。
          .onMouse((event) => { console.log('onMouse') })
          // min: api 8
          // 组件区域变化时触发该回调。仅会响应由布局变化所导致的组件大小、位置发生变化时的回调。由绘制变化所导致的渲染属性变化不会响应回调，
          // 如translate、offset。
          //   - Area：返回目标元素的宽高以及目标元素相对父元素和页面左上角的坐标位置。
          .onAreaChange(() => { console.log('onAreaChange') })
          // min: api 9
          // 组件可见区域变化时触发该回调。
          //   -ratios：阈值数组。其中，每个阈值代表组件可见面积（即组件在屏幕显示区的面积）与组件自身面积的比值。当组件可见面积与自身面积的比值大于或小于阈值时，均会触发该回调。每个阈值的取值范围为[0.0, 1.0]，如果开发者设置的阈值超出该范围，则会实际取值0.0或1.0.
          //   -isVisible：表示组件的可见面积与自身面积的比值是否大于阈值，true表示大于，false表示小于。
          //   -currentRatio：触发回调时，组件可见面积与自身面积的比值。
          // 说明：
          // 该接口只适用于组件布局区域超出或离开了当前屏幕显示区域的情况，不支持组件堆叠（Stack）导致的面积不可见、使用offset或translate等图形变换接口导致的面积超出情况。
          .onVisibleAreaChange([0.0, 1.0], (isVisible: boolean, currentRatio: number) => { console.log('onVisibleAreaChange') })
      }
      .width('100%')
    }
    .height('100%')
  }
}