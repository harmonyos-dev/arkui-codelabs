# 001-helloworld

## 目录结构

```
001-helloworld
├─ AppScope                                # 应用范围目录，用于存放应用的配置文件和资源文件
│  ├─ app.json5
│  └─ resources
│     └─ base
│        ├─ element
│        │  └─ string.json
│        └─ media
│           └─ app_icon.png
├─ entry                                   # 入口目录，用于存放应用的入口文件
│  ├─ hvigorfile.ts
│  ├─ oh-package.json5
│  └─ src
│     ├─ main                              # 主入口目录
│     │  ├─ ets
│     │  │  ├─ entryability                # 入口能力目录  
│     │  │  │  └─ EntryAbility.ts          # ability 定义文件
│     │  │  └─ pages                        
│     │  │     └─ Index.ets                # 主页面组件文件
│     │  ├─ module.json5                   # 模块配置文件
│     │  └─ resources                      # 资源目录
│     │     ├─ base                        # 基础资源目录
│     │     │  ├─ element                   # 元素资源目录
│     │     │  │  ├─ color.json             # 颜色配置文件
│     │     │  │  └─ string.json            # 字符串配置文件
│     │     │  ├─ media                    # 媒体资源目录
│     │     │  │  └─ icon.png
│     │     │  └─ profile                   # 页面配置文件
│     │     │     └─ main_pages.json
│     │     ├─ en_US                        # 国际化 - 英文
│     │     │  └─ element
│     │     │     └─ string.json
│     │     ├─ rawfile                      # 原始文件目录
│     │     └─ zh_CN
│     │        └─ element                   # 国际化 - 中文
│     │           └─ string.json
│     └─ ohosTest                               # 单元测试目录
│        ├─ ets
│        │  ├─ test
│        │  │  ├─ Ability.test.ets
│        │  │  └─ List.test.ets
│        │  ├─ testability
│        │  │  ├─ pages
│        │  │  │  └─ Index.ets
│        │  │  └─ TestAbility.ets
│        │  └─ testrunner
│        │     └─ OpenHarmonyTestRunner.ts
│        ├─ module.json5
│        └─ resources
│           └─ base
│              ├─ element
│              │  ├─ color.json
│              │  └─ string.json
│              ├─ media
│              │  └─ icon.png
│              └─ profile
│                 └─ test_pages.json
├─ hvigor                                     # 打包工具相关配置文件
│  ├─ hvigor-config.json5
│  └─ hvigor-wrapper.js
├─ build-profile.json5                        # 项目构建配置文件
├─ hvigorfile.ts
├─ hvigorw                                    # 打包工具 shell 脚本
├─ hvigorw.bat                                # 打包工具 bat 脚本
├─ oh-package-lock.json5                      # 项目依赖锁定文件，类似 package-lock.json
├─ oh-package.json5                           # 项目配置文件，类似 package.json
└─ README.md

```