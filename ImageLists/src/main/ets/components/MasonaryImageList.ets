import router from '@system.router'
import {ImageData} from './ImageDataItem'
@Entry
@Component
struct masonaryImageList{
  private images: any = router.getParams().images
  private padding: any = router.getParams().padding
  private scroller: Scroller = new Scroller();
  private model: MasonaryImageListModel

  aboutToAppear(){
    this.model = new MasonaryImageListModel(this.images)
  }

  build(){
    Column(){
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

      Scroll(this.scroller){
        Row(){
          Column(){
            ForEach([...new Array(this.model.images.length).keys()], (index: number) =>{
              if((index+1)%2!=0){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                    Image(this.model.images[index].imagePath).width('100%').height(this.model.images[index].height)
                  }.params({ showImage: this.model.images[index], targetPath: './MasonaryImageList' })
                  Row(){
                    Text(this.model.images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(this.padding)
              }
            })
          }
          .width('50%')
          Column(){
            ForEach([...new Array(this.model.images.length).keys()], (index: number) =>{
              if((index+1)%2==0){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                    Image(this.model.images[index].imagePath).width('100%').height(this.model.images[index].height)
                  }.params({ showImage: this.model.images[index], targetPath: './MasonaryImageList' })
                  Row(){
                    Text(this.model.images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(this.padding)
              }
            })
          }
          .width('50%')
        }.margin({top:'5vp',left:'5vp',right:'5vp',bottom:'30vp'}).alignItems(VerticalAlign.Top)
      }
      .scrollable(ScrollDirection.Vertical).scrollBar(BarState.Off)

    }
  }
}

class MasonaryImageListModel{
  images: ImageData[]

  constructor(images:ImageData[]){
    this.images=images
    this.setHeights()
  }

  setHeights(){
    for(var i=0;i<this.images.length;i++){
      if(i%8==0 || i%8==4 || i%8==5){
        this.images[i].height='224vp'
      }
      else if(i%8==1 || i%8==3 || i%8==6){
        this.images[i].height='152vp'
      }
      else if(i%8==2){
        this.images[i].height='112vp'
      }
      else{
        this.images[i].height='184vp'
      }
    }
  }
}