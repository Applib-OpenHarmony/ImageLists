@Entry
@Component
struct Index {

  build(){
    Column(){
      Flex({justifyContent:FlexAlign.Start}){
        Navigator({target:'../Image_Lists/MainScreen',type:NavigationType.Back}){
          Image($r("app.media.icon")).width(20).height(20)
        }.margin({right:15})
        Text("Previewer").width(60).height(20).fontFamily("Arial").fontSize(20).fontWeight(700).fontStyle(FontStyle.Normal);
        Button({type:ButtonType.Circle}){
          Image($r("app.media.icon")).width(20).height(20)
        }.width(20).height(20).alignSelf(ItemAlign.End)
      }.margin({left:15,top:20,right:15,bottom:30})
    }
  }
}