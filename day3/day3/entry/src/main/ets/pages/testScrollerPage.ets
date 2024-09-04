@Entry
@Component
struct Demo6 {
  @State message: string = 'Hello World';
  scroller: Scroller = new Scroller()
  private arr: number[] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  list:boolean[]=[false,false,false]
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
        //计划列表
        Column(){
          Row(){
            Text('我的计划')
              .fontSize(25)
            Button('添加')
              .onClick(()=>{
                this.list.push(false)
                console.log(this.list.length.toString())
              })
              .backgroundColor(Color.Green)
          }
          .justifyContent(FlexAlign.SpaceBetween)
          .width('90%')
          .height(80)
          Column({space:10}){
              ForEach(this.list,(item:boolean)=>{
                Row() {
                  Column(){
                    Image($r('app.media.gou'))
                      .width(60)
                      .height(60)
                  }
                  .onClick(()=>{
                    item=true
                  })
                    .width(60)
                    .height(60)
                    .borderColor(Color.Pink)
                    .borderWidth(2)
                    .backgroundColor(item===true?Color.Red:Color.White)
                  Row() {
                    TextInput()
                      .fontSize(30)

                  }
                  .height(60)
                  .width(250)
                }
                .justifyContent(FlexAlign.SpaceBetween)
                .width('90%')
              })

          }
        }

        Column(){
          //每日见解
          Column(){
            Row(){
              Text('每日见解')
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
                    .width(130)
                    .height(200)
                    .borderRadius(20)
                })
              }
              .height(200)
            }
            .scrollable(ScrollDirection.Horizontal)
          }
          .width('90%')
          /*.height(300)
          .borderRadius(15)
          .backgroundColor(Color.White)*/

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
                        .width(130)
                        .height(200)
                        .borderRadius(20)
                    })
                  }
                  .height(200)
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
    .scrollable(ScrollDirection.Vertical) // 滚动方向纵向
   /* .scrollBar(BarState.On) // 滚动条常驻显示
    .scrollBarColor(Color.Gray) // 滚动条颜色
    .scrollBarWidth(0) // 滚动条宽度
    .edgeEffect(EdgeEffect.None)*/
  }
}