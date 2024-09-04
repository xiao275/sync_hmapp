import {calendar} from "./elements/calendar"

@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        calendar()
      }
      .width('100%')
      .padding(12)
    }
    .height('100%')
  }
}