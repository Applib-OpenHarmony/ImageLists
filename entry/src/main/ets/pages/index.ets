@Entry
@Component
struct Index {
  private arr:number[][] = [[1],[2],[3,4],[5]]
  private size: number[] = [3,2,1,2];

  curr: number =0;
  build() {
    Column() {
      ForEach([...new Array(6).keys()],(index:number) =>{
        if(true){
          Button("Index Number: "+(index+this.curr)).onAppear(()=>{
            console.log("Before "+this.curr+'')
            this.curr++;
            console.log("After" +this.curr+'')
          })

          .margin({top:5,bottom:5})
        }
     })
    }.width('100%').margin({top:5})
  }
}