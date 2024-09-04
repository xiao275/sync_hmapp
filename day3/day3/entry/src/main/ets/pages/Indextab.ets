import { iconColorStyle } from '../elements/const';
import { AnalysePage } from './AnalysePage';
import { Mine } from './MyPage';
import { PlanPage } from './PlanPage';
import { RecordingPage } from './RecordingPage';

@Entry
@Component
struct Main {
  @State message: string = 'Hello World';
  @State currentIndex: number = 0;

  //1. 封装一个TabBuilder
  //4个输入参数：title,imgSelect,imgNormal,index(导航的编号)
  @Builder
  TabBuilder(title: string, index: number, imgSelect: Resource, imgNormal: Resource) {
    Column() {
      Image(this.currentIndex === index ? imgNormal : imgSelect)//判断到底我是否被选中
        .width(40)
        .height(40)
      Text(title)
        .fontColor(this.currentIndex === index ? iconColorStyle.normalColor : Color.Gray)
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      TabContent() {
          PlanPage()
      }
      .tabBar(this.TabBuilder("计划", 0, $r("app.media.plan"), $r('app.media.plan2'))) //0
      TabContent() {
        AnalysePage()
      }
      .tabBar(this.TabBuilder("分析", 1, $r("app.media.analyse"), $r("app.media.analyse2")))

      TabContent() {
          RecordingPage()
      }
      .tabBar(this.TabBuilder("记录", 2, $r("app.media.recording"), $r("app.media.recording2")))

      TabContent() {
        Mine()
      }
      .tabBar(this.TabBuilder("我的", 3, $r("app.media.mine"), $r('app.media.mine2')))
    }
    .onChange((index: number) => { //当前切换的tab的索引
      this.currentIndex = index;
    })
  }
}

