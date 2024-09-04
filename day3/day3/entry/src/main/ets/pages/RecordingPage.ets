@Component
export struct RecordingPage{
  @State currentIndex:number=4
  gridItemList:GridItemData[]=[
    new GridItemData(0,'ghgjhk','20','fghj'),
    new GridItemData(1,'ghgjhk','20','fghj'),
    new GridItemData(2,'ghgjhk','20','fghj'),
    new GridItemData(3,'ghgjhk','20','fghj'),

  ]
  build() {
    Column({space:15}){
      Row(){
        Text('你好')
      }.height(30)
      Column(){

      }
      .width(200)
      .height(200)
      .backgroundColor(Color.White)
      .borderRadius('50%')

      Row(){

      }.width('90%')
      .height(80)
      .backgroundColor(Color.White)
      .borderRadius('50%')
      Text('dfghjk')
        .height(130)
      /*Row(){

      }.width('90%')
      .height(80)
      .backgroundColor(Color.White)
      .borderRadius('50%')*/
      Grid(){
        ForEach(this.gridItemList,(item:GridItemData)=>{
          GridItem(){
            Column() {

              Text(item.title)
              Text(item.data1)
                .fontSize(30)
              Text(item.data2)
            }
            .width(130)
            .backgroundColor(this.currentIndex===item.index?Color.Yellow:Color.White)
          }
          .onClick(()=>{
            this.currentIndex=item.index
          })
        })
      }
      .rowsTemplate('1fr 1fr')
      .columnsTemplate('1fr 1fr')
      .height(200)
      .backgroundColor(Color.White)
      .borderRadius({topLeft:30,topRight:30})
    }
    .width('100%')
    .backgroundImage($r('app.media.img1'))
    .backgroundImageSize({ width: '100%', height: '100%' })

  }
}
class GridItemData{
  index:number
  title:string
  data1:string
  data2:string
  constructor(index:number,title:string,data1:string,data2:string) {
    this.index=index
    this.title=title
    this.data1=data1
    this.data2=data2
  }
}