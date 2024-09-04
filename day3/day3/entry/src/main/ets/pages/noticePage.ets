import { router } from '@kit.ArkUI'

@Entry
@Component
export struct noticePage{
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