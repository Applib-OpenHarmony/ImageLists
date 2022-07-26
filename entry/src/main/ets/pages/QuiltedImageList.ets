import router from '@system.router'
import {ImageSize} from './imagedataitem'

@Entry
@Component
struct quiltedImageList{
  private col1_images: any = router.getParams().col1_images
  private col2_images: any = router.getParams().col2_images
  private scroller: Scroller = new Scroller();
  private helperArray1: number[] = new Array();
  private helperArray2: number[] = new Array();

  aboutToAppear(){
    var i=0;
    while(i<this.col1_images.length){
      if(this.col1_images[i].size==ImageSize.BIG_SQUARE){
        this.helperArray1.push(i);
        i++;
      }
      else if(this.col1_images[i].size==ImageSize.RECTANGLE){
        this.helperArray1.push(i);
        i++;
      }
      else{
        this.helperArray1.push(i);
        i+=2;
      }
    }
    i=0;
    while(i<this.col2_images.length){
      if(this.col2_images[i].size==ImageSize.BIG_SQUARE){
        this.helperArray2.push(i);
        i++;
      }
      else if(this.col2_images[i].size==ImageSize.RECTANGLE){
        this.helperArray2.push(i);
        i++;
      }
      else{
        this.helperArray2.push(i);
        i+=2;
      }
    }

  }

  build(){
    Column({space:5}){
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
            }.width('20vp').height('20vp').backgroundColor("#a000e3")
          }.height('30vp')
        }.width('30%').margin({left:'15vp',top:'10vp'}).alignItems(HorizontalAlign.End)

      }.width('100%').height('66vp').backgroundColor("#a000e3")

      Scroll(this.scroller){
        Row(){
          Column(){
            ForEach(this.helperArray1, (index: number) =>{
              if(this.col1_images[index].size==ImageSize.BIG_SQUARE){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                    Image(this.col1_images[index].imagePath).width('100%').height('181vp')
                  }.params({ showImage: this.col1_images[index], targetPath: 'pages/QuiltedImageList' })

                  Row(){
                    Text(this.col1_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else if(this.col1_images[index].size==ImageSize.RECTANGLE){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                    Image(this.col1_images[index].imagePath).width('100%').height('89vp')
                  }.params({ showImage: this.col1_images[index], targetPath: 'pages/QuiltedImageList' })

                  Row(){
                    Text(this.col1_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else{
                Grid(){
                  GridItem(){
                    Stack({alignContent:Alignment.BottomStart}){
                      Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                        Image(this.col1_images[index].imagePath).objectFit(ImageFit.Fill)
                      }.params({ showImage: this.col1_images[index], targetPath: 'pages/QuiltedImageList' })

                      Row(){
                        Text(this.col1_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                      }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                    }.padding(2)

                  }.width('88vp').height('88vp')

                  GridItem(){
                    Stack({alignContent:Alignment.BottomStart}){
                      Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                        Image(this.col1_images[index+1].imagePath).objectFit(ImageFit.Fill)
                      }.params({ showImage: this.col1_images[index+1], targetPath: 'pages/QuiltedImageList' })

                      Row(){
                        Text(this.col1_images[index+1].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                      }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                    }.padding(2)

                  }.width('88vp').height('88vp')
                }
                .columnsTemplate('1fr 1fr')
                .width('100%').height('89vp')
              }
            })
          }
          .width('50%')

          Column(){
            ForEach(this.helperArray2, (index: number) =>{
              if(this.col2_images[index].size==ImageSize.BIG_SQUARE){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                    Image(this.col2_images[index].imagePath).width('100%').height('181vp')
                  }.params({ showImage: this.col2_images[index], targetPath: 'pages/QuiltedImageList' })

                  Row(){
                    Text(this.col2_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else if(this.col2_images[index].size==ImageSize.RECTANGLE){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                    Image(this.col2_images[index].imagePath).width('100%').height('89vp')
                  }.params({ showImage: this.col2_images[index], targetPath: 'pages/QuiltedImageList' })

                  Row(){
                    Text(this.col2_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else{
                Grid(){
                  GridItem(){
                    Stack({alignContent:Alignment.BottomStart}){
                      Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                        Image(this.col2_images[index].imagePath).objectFit(ImageFit.Fill)
                      }.params({ showImage: this.col2_images[index], targetPath: 'pages/QuiltedImageList' })

                      Row(){
                        Text(this.col2_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                      }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                    }.padding(2)

                  }.width('88vp').height('88vp')

                  GridItem(){
                    Stack({alignContent:Alignment.BottomStart}){
                      Navigator({ target: 'pages/ImageScreen', type: NavigationType.Push }) {
                        Image(this.col2_images[index+1].imagePath).objectFit(ImageFit.Fill)
                      }.params({ showImage: this.col2_images[index+1], targetPath: 'pages/QuiltedImageList' })

                      Row(){
                        Text(this.col2_images[index+1].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                      }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                    }.padding(2)

                  }.width('88vp').height('88vp')
                }
                .columnsTemplate('1fr 1fr')
                .width('100%').height('89vp')
              }
            })
          }
          .width('50%')
        }.height('100%').margin({top:'2vp',left:'5vp',right:'5vp',bottom:'30vp'}).alignItems(VerticalAlign.Top)
      }
      .scrollable(ScrollDirection.Vertical).scrollBar(BarState.Off)



    }
  }
}