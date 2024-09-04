import { calendar } from '../elements/calendar'
import { iconColorStyle } from '../elements/const'

@Component
@Preview
export struct PlanPage{
  scroller: Scroller = new Scroller()
  @State list:boolean[]=[false]
  build() {
    Scroll(this.scroller){
    Column(){
      calendar()
        .height(400)

      //每日见解
      // Column(){
      //   Image($r('app.media.calendar'))
      //     .width('100%')
      //     .height('100%')
      // }
      // .width('100%')
      // .height(300)
      // .backgroundColor(iconColorStyle.beautifulColor)

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
                .borderWidth(3)
                .width(130)
                .height(200)
                .borderRadius(20)
                .borderColor(iconColorStyle.loveColor)
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
      //计划列表1

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
                .backgroundColor(item===true?Color.Red:Color.White)
                .width(60)
                .height(60)
                .borderColor(Color.Pink)
                .borderWidth(2)

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
        .width('100%')

    }
    .width('100%')
    }
    .scrollable(ScrollDirection.Vertical)
  }
}
class listItem{
  state:boolean=false
  content:string=''

  constructor(state:boolean,content:string) {
    this.state=state
    this.content=content
  }
}