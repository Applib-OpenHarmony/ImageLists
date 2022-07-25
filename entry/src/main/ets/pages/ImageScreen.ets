import router from '@system.router'
import {ImageData} from './imagedataitem'

@Entry
@Component
struct imageScreen{
  private showImage: any = router.getParams().showImage
  private targetPath: any = router.getParams().targetPath
  build(){
    Column(){
      Flex({justifyContent:FlexAlign.Start}){
        Column(){
          Row(){
            Navigator({target:this.targetPath,type:NavigationType.Back}){
              Image($r("app.media.back_icon")).width('25vp').height('20vp').objectFit(ImageFit.Contain)
            }.margin({right:'15vp'})

            Text(this.showImage.title).width('180vp').height('30vp').fontFamily("Arial").fontSize('28fp').fontWeight(FontWeight.Bold).fontColor(Color.White);
          }
        }.width('60%').margin({left:'15vp',top:'15vp'}).alignItems(HorizontalAlign.Start)

        Column(){
          Row(){
            Button({type:ButtonType.Circle}){
              Image($r("app.media.dotmenu")).width('20vp').height('20vp').objectFit(ImageFit.Contain)
            }.width('20vp').height('20vp').backgroundColor(Color.Black)
          }.height('30vp')
        }.width('20%').margin({left:'15vp',top:'15vp'}).alignItems(HorizontalAlign.End)

      }.width('100%').height('66vp').backgroundColor(Color.Black)

      Row(){
        Image(this.showImage.imagePath).width('100%').objectFit(ImageFit.Contain)
      }.width('100%').alignItems(VerticalAlign.Top)

    }.backgroundColor(Color.Black)
  }
}