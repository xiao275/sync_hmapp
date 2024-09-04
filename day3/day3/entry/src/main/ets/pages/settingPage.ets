import { router, Router } from '@kit.ArkUI'

@Entry
@Component
export struct settingPage{
  build() {
    Column(){
      Text('设置页面')
      Button('返回')
        .onClick(()=>{
          router.back()
        })
    }

  }
}