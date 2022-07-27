import router from '@system.router'
import {ImageData} from './imagedataitem'

@Entry
@Component
struct standardImageList{
  private images: any = router.getParams().images
  private imgWidth: any = router.getParams().width
  private imgHeight: any = router.getParams().height
  private padding: any = router.getParams().padding

  private scroller: Scroller = new Scroller();

  build(){
    Column({space:5}){
      Flex({justifyContent:FlexAlign.Start}){
        Column(){
          Row(){
            Navigator({target:'ImageLists/entry/src/main/ets/pages/MainScreen',type:NavigationType.Back}){
              Image($r("app.media.back_icon")).width('25vp').height('20vp').objectFit(ImageFit.Contain)
            }.margin({right:'15vp'})

            Text("Pictures").width('120vp').height('30vp').fontFamily("Arial").fontSize('28fp').fontWeight(FontWeight.Bold).fontColor(Color.White);
          }
        }.width('50%').margin({left:'15vp',top:'10vp'}).alignItems(HorizontalAlign.Start)

        Column(){
          Row(){
            Button({type:ButtonType.Circle}){
              Image($r("app.media.dotmenu")).width('20vp').height('20vp').objectFit(ImageFit.Contain)
            }.width('20vp').height('20vp').backgroundColor("#a000e3")
          }.height('30vp')
        }.width('30%').margin({left:'15vp',top:'10vp'}).alignItems(HorizontalAlign.End)

      }.width('100%').height('66vp').backgroundColor("#a000e3")

      Grid(this.scroller){
        ForEach(this.images, (img: ImageData) =>{
          GridItem(){
            Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
              Image(img.imagePath)
                .objectFit(ImageFit.Fill)
            }.params({showImage: img, targetPath:'./StandardImageList'})
          }
          .width(this.imgWidth)
          .height(this.imgHeight)
          .padding(this.padding)
        })
      }
      .columnsTemplate('1fr 1fr 1fr')
      .margin({left:'5vp',right:'5vp', bottom: '30vp'})

    }
  }
}

class StandImageListModel{

}