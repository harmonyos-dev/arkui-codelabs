// 创建一个 LocalStorage 实例
// LocalStorage是ArkTS为构建页面级别状态变量提供存储的内存内“数据库”
let localStorage = new LocalStorage({
  initialMessage: 'Hello World'
})

// AppStorage是全局单例的，直接使用就可以了
AppStorage.SetOrCreate('initialMessage', 'Hello World')

// PersistentStorage：持久化存储UI状态
// 将 AppStorage 中的 key 为 initialMessage 的值进行持久化存储
// 1. 如果PersistentStorage文件中存在key对应的属性，在AppStorage中创建对应的propName，并用在PersistentStorage中找到的key的属性初始化。
// 2. 如果PersistentStorage文件中没有查询到key对应的属性，则在AppStorage中查找key对应的属性。如果找到key对应的属性，则将该属性持久化。
// 3.如果AppStorage也没查找到key对应的属性，则在AppStorage中创建key对应的属性。用defaultValue初始化其值，并将该属性持久化。
// See: https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/arkts-persiststorage-0000001474017166-V2
PersistentStorage.PersistProp('initialMessage', 'Hello World');
// Environment：设备环境查询
// See: https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/arkts-environment-0000001473537710-V2
Environment.EnvProp('languageCode', 'en');

// 组件树的根节点，即被@Entry装饰的@Component，可以被分配一个LocalStorage实例，
// 此组件的所有子组件实例将自动获得对该LocalStorage实例的访问权限；
@Entry(localStorage)
@Component
struct Index {
  // 单向绑定 LocalStorage
  @LocalStorageProp('initialMessage') messageProp: string = '';
  // 单向绑定 AppStorage
  @StorageProp('initialMessage') messageProp2: string = '';
  // 获取从Environment中获取的值
  @StorageProp('languageCode') languageCode: string = '';

  // 双向绑定 LocalStorage
  @LocalStorageLink('initialMessage') messageLink: string = '';
  // 双向绑定 AppStorage
  @StorageLink('initialMessage') messageLink2: string = '';

  build() {
    Row() {
      Column() {
        Row() {
          Text('Env language code: ' + this.languageCode);
        }
        Row() {
          Text('LocalStorage: ')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          LocalStorageMessage()
        }
        Row() {
          Text('AppStorage: ')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          AppStorageMessage()
        }

        Button('Change Message(单向绑定)')
          .onClick(() => {
            // 只会改变当前组件的messageProp，不会改变LocalStorage中的值
            this.messageProp = 'Hello ArkUI @LocalStorageProp'
            // 只会改变当前组件的messageProp2，不会改变AppStorage中的值
            this.messageProp2 = 'Hello ArkUI @StorageProp'
          })
          .margin({
            top: 10
          })

        Button('Change Message(双向绑定)')
          .onClick(() => {
            // 会改变LocalStorage中的值
            this.messageLink = 'Hello ArkUI @LocalStorageLink'
            // 会改变AppStorage中的值
            this.messageLink2 = 'Hello ArkUI @StorageLink'
          })
          .margin({
            top: 10
          })

        Button('Reset LocalStorage')
          .onClick(() => {
            this.messageLink = 'Hello World'
            this.messageLink2 = 'Hello World'
          })
          .margin({
            top: 10
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}

@Component struct LocalStorageMessage {
  @LocalStorageProp('initialMessage') message: string = '';

  build() {
    Text(this.message)
      .fontSize(30)
      .fontWeight(FontWeight.Bold)
  }
}

@Component struct AppStorageMessage {
  @StorageProp('initialMessage') message: string = '';

  build() {
    Text(this.message)
      .fontSize(30)
      .fontWeight(FontWeight.Bold)
  }
}