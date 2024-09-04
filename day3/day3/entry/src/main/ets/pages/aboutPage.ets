import { router, Router } from '@kit.ArkUI'

@Entry
@Component
export struct aboutPage{
  build() {
    Column(){
      Text('关于页面')
      Button('返回')
        .onClick(()=>{
          router.back()
        })
    }

  }
}