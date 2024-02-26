@Entry
@Component
struct Index {
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

  build() {
    // 一列 （纵向排列子元素）
    Column() {
      // 一行 （横向排列子元素）
      Row() {
        Text('1')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('red')
          .padding({ left: '10', right: '10' })

        Text('2')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('green')
          .padding({ left: '10', right: '10' })

        Text('3')
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('blue')
          .padding({ left: '10', right: '10' })
      }
      .width('100%')

      Row() {
        // 子元素会堆叠在一起
        Stack() {
          Row()
            .width('100%')
            .height('80%')
            .backgroundColor('red')
          Row()
            .width('80%')
            .height('60%')
            .backgroundColor('green')
          Row()
            .width('60%')
            .height('40%')
            .backgroundColor('blue')
        }
        .height('100%')
        .width('100%')
        .backgroundColor('black')
      }
      .width('100%')
      .height(70)

      // 类似 flexbox
      // 子元素横向或纵向排列（默认横向）
      Flex() {
        ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], (item) => {
          Text(`${item}`)
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .fontColor(['red', 'green', 'blue'][item % 3])
            .padding({ left: '10', right: '10' })
        }, (item) => item)
      }
      .backgroundColor('black')
      .margin({bottom: 40})  // 如果没有这个，溢出后的内容就会被下面的 Flex 盖住

      // 默认为 FlexWrap.NoWrap，即尽可能的挤在一起, 如果实在挤不下，就溢出
      // 注意！！ 溢出到下一行后，不会把 Flex 的高度撑开，溢出后的内容也不会占用空间
      Flex({wrap: FlexWrap.Wrap}) {
        ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], (item) => {
          Text(`${item}`)
            .fontSize(50)
            .fontWeight(FontWeight.Bold)
            .fontColor(['red', 'green', 'blue'][item % 3])
            .padding({ left: '10', right: '10' })
        }, (item) => item)
      }
      .backgroundColor('black')


      // 网格布局
      Grid() {
        ForEach([1, 2, 3, 4, 5, 6, 7, 8, 9], (item) => {
          // Grid 子组件必须是 GridItem
          GridItem() {
            Text(`${item}`)
              .fontSize(50)
              .fontWeight(FontWeight.Bold)
              .fontColor(['red', 'green', 'blue'][item % 3])
              .padding({ left: '10', right: '10' })
              .backgroundColor('white')
          }
        }, (item) => item)
      }
      // 注意！！！ 这里只支持 fr 单位，不像 CSS 那么灵活
      .rowsTemplate('1fr 2fr 1fr')
      .columnsTemplate('1fr 1fr 1fr')
      .rowsGap(5)
      .columnsGap(5)
      .height(300)
      .backgroundColor('gray')

      // list
      List({ space: 20, initialIndex: 0 }) {
        ForEach(
          // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
          this.arr,
          (item) => {
          // Grid 子组件必须是 GridItem
          ListItem() {
            Text(`${item}`)
              .fontSize(50)
              //.height(100) // 注意！！！！列表没设置高度内容必须显式设置高度，否则滚动不了！！！
              .fontWeight(FontWeight.Bold)
              .fontColor(['red', 'green', 'blue'][item % 3])
              .padding({ left: '10', right: '10' })
              .backgroundColor('white')
          }
          .backgroundColor('gray')
        }, (item) => item)
      }
      .listDirection(Axis.Vertical) // 排列方向 默认就是纵向排列
      .divider({ strokeWidth: 2, color: 0xFFFFFF, startMargin: 20, endMargin: 20 }) // 每行之间的分界线，默认没有分界线
      .edgeEffect(EdgeEffect.Spring) // 滑动到边缘无效果
      .onScrollIndex((firstIndex: number, lastIndex: number) => {
        console.info('first' + firstIndex)
        console.info('last' + lastIndex)
      })
      .width('100%')
      // TODO(CGQAQ): 为什么这里 94% list 就不能滚动了
      .height('93%')
    }
    .height('100%')
  }
}