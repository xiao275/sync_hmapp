import { getToday } from './tools'
import { DatesStyle, BackgroundColor, ItemHeight } from './const'

@Component
export struct day {
  @State showDate: number[] = []
  private monthDate: number[]=[]
  @StorageLink("titleDate") titleDate: number[] = getToday()

  private getTextColor(): ResourceColor {
    if (JSON.stringify(this.showDate) == JSON.stringify(this.monthDate)) {
      if (JSON.stringify(this.showDate) == JSON.stringify(getToday()))
        return BackgroundColor
      return DatesStyle.FontColor.accentColor
    } else {
      if (JSON.stringify(this.showDate) == JSON.stringify(getToday()))
        return DatesStyle.FontColor.accentColor
      if (this.showDate[1] == this.monthDate[1])
        return DatesStyle.FontColor.defaultColor
      return DatesStyle.FontColor.unableColor
    }
  }

  private getBackgroundColor(): ResourceColor {
    if (JSON.stringify(this.showDate) == JSON.stringify(this.monthDate) &&
    JSON.stringify(this.showDate) == JSON.stringify(getToday())) {
        return DatesStyle.BackgroundColor
    } else {
      return BackgroundColor
    }
  }

  private getBorderColor(): ResourceColor {
    if (JSON.stringify(this.showDate) == JSON.stringify(this.monthDate)){
      return DatesStyle.BackgroundColor
    } else {
      return BackgroundColor
    }
  }

  private changeDate() {
    this.titleDate = this.showDate;
  }

  build() {
    Row() {
      Column() {
        Text(this.showDate[2].toString())
          .fontSize(DatesStyle.FontSize)
          .fontWeight(DatesStyle.FontWeight)
          .fontColor(this.getTextColor())
      }
      .width('100%')
    }
    .height('100%')
    .backgroundColor(this.getBackgroundColor())
    .border({
      width: DatesStyle.BorderWidth,
      color: this.getBorderColor()
    })
    .aspectRatio(1)
    .borderRadius('50%')
    .onClick(() => this.changeDate())
  }
}