import router from '@system.router'
import {ImageData} from './imagedataitem'

@Entry
@Component
struct masonaryImageList{
  private images: any = router.getParams().images
  private padding: any = router.getParams().padding

  private scroller: Scroller = new Scroller();

  build(){
    Column(){
      Flex({justifyContent:FlexAlign.Start}){
        Column(){
          Row(){
            Navigator({target:'pages/MainScreen',type:NavigationType.Back}){
              Image($r("app.media.back_icon")).width('25vp').height('20vp').objectFit(ImageFit.Contain)
            }.margin({right:'15vp'})

            Text("Pictures").width('120vp').height('30vp').fontFamily("Arial").fontSize('28fp').fontWeight(FontWeight.Bold).fontColor(Color.White);
          }
        }.width('50%').margin({left:'15vp',top:'10vp'}).alignItems(HorizontalAlign.Start)

        Column(){
          Row(){
            Button({type:ButtonType.Circle}){
              Image($r("app.media.dotmenu")).width('20vp').height('20vp').objectFit(ImageFit.Contain)
            }.width('20vp').height('20vp').backgroundColor(Color.Blue)
          }.height('30vp')
        }.width('30%').margin({left:'15vp',top:'10vp'}).alignItems(HorizontalAlign.End)

      }.width('100%').height('66vp').backgroundColor(Color.Blue)

      Row(){
        Column(){
          ForEach([...new Array(this.images.length).keys()], (index: number) =>{
            if((index+1)%2!=0){
              Stack({alignContent:Alignment.BottomStart}){
                Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                  Image(this.images[index].imagePath).width('100%').height(this.images[index].height)
                }.params({ showImage: this.images[index], targetPath: 'pages/MasonaryImageList' })
                Row(){
                  Text(this.images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
              }.padding(this.padding)
            }
          })
        }
        .width('50%')
        Column(){
          ForEach([...new Array(this.images.length).keys()], (index: number) =>{
            if((index+1)%2==0){
              Stack({alignContent:Alignment.BottomStart}){
                Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                  Image(this.images[index].imagePath).width('100%').height(this.images[index].height)
                }.params({ showImage: this.images[index], targetPath: 'pages/MasonaryImageList' })
                Row(){
                  Text(this.images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
              }.padding(this.padding)
            }
          })
        }
        .width('50%')
      }.height('100%').margin({top:10,left:5,right:5,bottom:10}).alignItems(VerticalAlign.Top)

    }
  }
}