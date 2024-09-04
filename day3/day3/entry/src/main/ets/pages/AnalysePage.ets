@Component
export struct AnalysePage{
  @State message: string = 'Hello World';
  scroller: Scroller = new Scroller()
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  list:boolean[]=[false,false,false]
  swiperController:SwiperController=new SwiperController()
  build() {
    Scroll(this.scroller) {

      Column({space:20}) {
        /*ForEach(this.arr, (item:number) => {
          Text(item.toString())
            .width('90%')
            .height(150)
            .backgroundColor(0xFFFFFF)
            .borderRadius(15)
            .fontSize(16)
            .textAlign(TextAlign.Center)
            .margin({ top: 10 })
        })*/
        //顶部轮播
        Column(){
          Swiper(this.swiperController){
            Image($r('app.media.img1'))
              .width('100%')
              .height(200)
            Image($r('app.media.img2'))
              .width(200)
              .height(200)
            Image($r('app.media.img3'))
              .width(200)
              .height(200)
          }
          .loop(true)
          .autoPlay(true)
          .interval(2000)
          Column(){
            Row(){
              Text('训练小知识')
                .fontWeight(FontWeight.Bold)
                .fontSize(18)
              Text('更多')
                .fontColor(Color.Gray)
                .fontSize(14)

            }
            .height(40)
            .justifyContent(FlexAlign.SpaceBetween)
            .width('90%')
            Scroll(this.scroller){
              Row({space:15}){
                ForEach([1,2,3,4,5],(item:number)=>{
                  Column(){
                    Image($r('app.media.img2'))
                      .width(150)
                      .height(80)
                      .borderRadius(15)
                    Text('如何修复盆骨')
                  }
                })
              }

            }
            .width('95%')
            .scrollable(ScrollDirection.Horizontal)
            .scrollBar(BarState.On) // 滚动条常驻显示
            .scrollBarColor(Color.Gray) // 滚动条颜色
            .scrollBarWidth(0) // 滚动条宽度
            .edgeEffect(EdgeEffect.None)

          }
          .borderRadius(20)
          .height(100)
        }
        Column(){
          ForEach([1,2,3,4],(item:number)=>{
            Column(){
              Row(){
                Text('训练练习')
                  .fontSize(25)
                  .fontWeight(FontWeight.Bold)
              }
              .height(60)
              .width('100%')
              Scroll(this.scroller){
                Row({space:15}){
                  ForEach([1,2,3,4],(item:number)=>{
                    Column()
                      .backgroundColor(Color.White)
                      .width(170)
                      .height(150)
                      .borderRadius(20)
                  })
                }
              }
              .scrollable(ScrollDirection.Horizontal)
            }
            .width('90%')
          })

        }
        .width('100%')
        //训练练习


      }.width('100%')
      .backgroundColor('#e2d0d0')
    }
    .scrollable(ScrollDirection.Vertical)

    
  }
}
