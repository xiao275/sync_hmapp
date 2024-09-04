import promptAction from '@ohos.promptAction'
interface iconIColorStyle{
  deepColor:ResourceColor,
  softColor:ResourceColor,
  normalColor:ResourceColor,
  loveColor:ResourceColor
  beautifulColor:ResourceColor
}
export const iconColorStyle:iconIColorStyle= {
  deepColor: '#d4237a',
  softColor: Color.Pink,
  normalColor: '#9c2d3e',
  loveColor:'#ef5180',
  beautifulColor:'#e06178'
}
interface TextStyle {
  FontColor: ResourceColor,
  FontSize: Length,
  FontWeight: FontWeight,
  Height: Length
}

export const TitleStyle:TextStyle = {
  FontColor: Color.Black,
  FontSize: 30,
  FontWeight: FontWeight.Bold,
  Height: 50
}

export const SubTitleStyle:TextStyle = {
  FontColor: Color.Gray,
  FontSize: 15,
  FontWeight: FontWeight.Regular,
  Height: 15
}
interface ColorStyle{
  accentColor: ResourceColor,
  defaultColor: ResourceColor,
  unableColor: ResourceColor
}
interface DateIStyle {
  FontColor:ColorStyle,
  BackgroundColor: ResourceColor,
  FontSize: Length,
  FontWeight: FontWeight,
  BorderWidth: Length
}

export const DatesStyle:DateIStyle = {
  FontColor: {
    accentColor: Color.Pink,
    defaultColor: Color.Black,
    unableColor: Color.Gray
  },
  BackgroundColor: Color.Pink,
  FontSize: 22,
  FontWeight: FontWeight.Bold,
  BorderWidth: 2
}

export const BackgroundColor:ResourceColor = Color.White

export const ItemHeight:number = 80
export const ItemSpace:string | number = 15

export const Animate: AnimateParam = {
  duration: 300,
  curve: Curve.EaseInOut
}

export function callback(date: Date): void {
  promptAction.showToast({
    message: '选择日期：' + JSON.stringify([date.getFullYear(), date.getMonth() + 1, date.getDate()]),
    duration: 1000,
  });
}