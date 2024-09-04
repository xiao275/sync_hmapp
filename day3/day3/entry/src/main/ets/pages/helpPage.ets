import { router, Router } from '@kit.ArkUI'

@Entry
@Component
export struct helpPage{
  build() {
    Column(){
      Text('帮助')
      Button('返回')
        .onClick(()=>{
          router.back()
        })
    }

  }
}