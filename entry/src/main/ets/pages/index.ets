@Entry
@Component
struct Index {
  build(){
    Row(){
      Column(){
        ForEach([...Array(10).keys()],(index:number)=>{
            Text(index+'').fontSize(15).fontWeight(FontWeight.Bold);
        })
      }.width('50%').backgroundColor(Color.Gray)
      Column(){
        ForEach([...Array(10).keys()],(index:number)=>{
          Text(index*2+'').fontSize(15).fontWeight(FontWeight.Bold);
        })
      }.width('50%').backgroundColor(Color.Orange)
    }.width('100%')
  }
}