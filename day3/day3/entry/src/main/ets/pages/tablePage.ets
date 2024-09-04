import { router, Router } from '@kit.ArkUI'

@Entry
@Component
export struct tablePage{
  build() {
    Column(){
      Text('图表')
      Button('返回')
        .onClick(()=>{
          router.back()
        })
    }

  }
}