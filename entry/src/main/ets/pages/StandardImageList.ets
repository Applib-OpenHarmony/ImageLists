import router from '@system.router'
import ImageDataItem from './imagedataitem'

@Entry
@Component
struct standardImageList{
  @State images: any = router.getParams().images
  build(){
    Column({space:5}){
      Flex({justifyContent:FlexAlign.Start}){
        Column(){
          Row(){
            Navigator({target:'pages/MainScreen',type:NavigationType.Back}){
              Image($r("app.media.icon")).width(20).height(20)
            }.margin({right:15})

            Text("Pictures").width(100).height(20).fontFamily("Arial").fontSize(20).fontWeight(700).fontColor(Color.White);
          }
        }.width('50%').margin({left:15,top:10,bottom:15}).alignItems(HorizontalAlign.Start)
        Column(){
          Button({type:ButtonType.Circle}){
            Image($r("app.media.icon")).width(20).height(20)
          }.width(20).height(20).alignSelf(ItemAlign.End)
        }.width('30%').margin({left:15,top:10,bottom:15}).alignItems(HorizontalAlign.End)
      }.width('100%').height(70).backgroundColor(Color.Blue)

      Grid(){
        ForEach(this.images, (img: ImageDataItem) =>{
          GridItem(){
            Image(img.path)
              .objectFit(ImageFit.Fill)
            //              .width(117)
            //              .height(117)
          }
          .width('100%')
          .height(117)
          .padding(4)
        })
      }
      .columnsTemplate('1fr 1fr 1fr')
      .margin({left:10,right:10})

    }
  }
}