import { router } from '@kit.ArkUI';
import { iconColorStyle } from '../elements/const';
import { webview } from '@kit.ArkWeb';

@Component
@Preview
export struct Mine {
  controller:webview.WebviewController = new webview.WebviewController();
  @State message: string = 'Hello World';
  listItem:ListItemData[] = [
    new ListItemData($r('app.media.shezhi'),"设置","pages/settingPage"),
    new ListItemData($r('app.media.jilu'),"报告",""),
    new ListItemData($r('app.media.shuju'),"图表","pages/tablePage"),
    new ListItemData($r('app.media.bangzhu'),"帮助","pages/helpPage"),
    new ListItemData($r('app.media.tixing'),"提醒","pages/noticePage"),
    new ListItemData($r('app.media.guanyu'),"关于","pages/aboutPage")
  ]
  gridItemList:GridItemData[]=[
    new GridItemData($r('app.media.background'),'全屋体验'),
    new GridItemData($r('app.media.background'),'全屋体验'),
    new GridItemData($r('app.media.background'),'全屋体验'),
    new GridItemData($r('app.media.background'),'全屋体验'),
  ]
  build() {
    Column({space:10}){
      Column(){

      }.width('85%')
      .height(150)
      .borderRadius(15)
      .backgroundColor(iconColorStyle.beautifulColor)
      Column() {
        Text('我的目标')
          .fontWeight(FontWeight.Bold)
          .fontSize(30)
      }
      Row({space:20}){
        this.optionButton('减肥')
        this.optionButton('减肥')
        this.optionButton('减肥')
      }.width('90%')
      //菜单
      /*Grid(){
        ForEach(this.gridItemList,(item:GridItemData)=>{
          GridItem(){
            Column() {
              Image(item.itemImage)
                .width(100)
                .height(70)
              Text(item.title)
            }
          }
        })
      }
      .rowsTemplate('1fr 1fr')
      .columnsTemplate('1fr 1fr')
      .height(200)*/

      //List
      /*List(){
        ForEach(this.listItem,(item:ListItemData)=>{
          ListItem() {
            this.MyListItem(item) //循环的时候，每次循环的item只有title
            //每个组件需要的是三个参数
          }
          .onClick(()=>{
            router.pushUrl({
              url:item.itemUrl
            })
          })
        })
      }
      .width('90%')
      .borderRadius(10)
      .backgroundColor(Color.White)
      .opacity(0.8)*/
      //测试跳转到图表
      Row(){
        Stack(){
          Web({src:$rawfile('radar.html'), controller:this.controller})
            /*.onControllerAttached(()=>{
              this.controller.loadUrl($rawfile('radar.html'))
            })*/
          // Button("跳转到rada页面")
          //   .onClick(()=>{
          //   console.log('11111111')
          //   this.controller.loadUrl($rawfile('radar.html'))
          // })
        }
        .height(300)
      }

      .width('100%')
    }
    .width('100%')
    .backgroundColor('#f2f2f2')


  }
  @Builder MyListItem(listItem:ListItemData){//输入参数是一个复杂类型，里面有三个值
    Row(){
      Column(){
        Image(listItem.itemImage)
          .width(30)
          .height(30)
      }
      .width(50)
      Text(listItem.title)
        .width(240)
      Text(">")
    }
    .width('100%')
    .height(60)
    .borderStyle(BorderStyle.Solid)


  }
  @Builder optionButton(title:string){

    Button(title)
    .width(85)
    .height(30)
    .borderRadius(20)
    .backgroundColor(iconColorStyle.loveColor)

  }
}
class ListItemData{
  itemImage:Resource
  title:string
  itemUrl:string
  constructor(itemImage:Resource,title:string,itemUrl:string){
    this.itemImage = itemImage
    this.title = title
    this.itemUrl = itemUrl
  }
}
class GridItemData{
  itemImage:Resource
  title:string

  constructor(itemImag:Resource,title:string) {
    this.itemImage=itemImag
    this.title=title
  }
}
