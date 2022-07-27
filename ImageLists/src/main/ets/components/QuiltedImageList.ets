import router from '@system.router'
import {ImageSize,ImageData} from './imagedataitem'

@Entry
@Component
struct quiltedImageList{
  private col1_images: any = router.getParams().col1_images
  private col2_images: any = router.getParams().col2_images
  private scroller: Scroller = new Scroller();
  private model: QuiltedImageListModel

  aboutToAppear(){
    this.model = new QuiltedImageListModel(this.col1_images,this.col2_images)
  }

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

      Scroll(this.scroller){
        Row(){
          Column(){
            ForEach(this.model.helperArray1, (index: number) =>{
              if(this.model.col1_images[index].size==ImageSize.BIG_SQUARE){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                    Image(this.model.col1_images[index].imagePath).width('100%').height('181vp')
                  }.params({ showImage: this.model.col1_images[index], targetPath: './QuiltedImageList' })

                  Row(){
                    Text(this.model.col1_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else if(this.model.col1_images[index].size==ImageSize.RECTANGLE){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                    Image(this.model.col1_images[index].imagePath).width('100%').height('89vp')
                  }.params({ showImage: this.model.col1_images[index], targetPath: './QuiltedImageList' })

                  Row(){
                    Text(this.model.col1_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else{
                Grid(){
                  GridItem(){
                    Stack({alignContent:Alignment.BottomStart}){
                      Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                        Image(this.model.col1_images[index].imagePath).objectFit(ImageFit.Fill)
                      }.params({ showImage: this.model.col1_images[index], targetPath: './QuiltedImageList' })

                      Row(){
                        Text(this.model.col1_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                      }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                    }.padding(2)

                  }.width('88vp').height('88vp')

                  GridItem(){
                    Stack({alignContent:Alignment.BottomStart}){
                      Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                        Image(this.model.col1_images[index+1].imagePath).objectFit(ImageFit.Fill)
                      }.params({ showImage: this.model.col1_images[index+1], targetPath: './QuiltedImageList' })

                      Row(){
                        Text(this.model.col1_images[index+1].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
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
            ForEach(this.model.helperArray2, (index: number) =>{
              if(this.model.col2_images[index].size==ImageSize.BIG_SQUARE){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                    Image(this.model.col2_images[index].imagePath).width('100%').height('181vp')
                  }.params({ showImage: this.model.col2_images[index], targetPath: './QuiltedImageList' })

                  Row(){
                    Text(this.model.col2_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else if(this.model.col2_images[index].size==ImageSize.RECTANGLE){
                Stack({alignContent:Alignment.BottomStart}){
                  Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                    Image(this.model.col2_images[index].imagePath).width('100%').height('89vp')
                  }.params({ showImage: this.model.col2_images[index], targetPath: './QuiltedImageList' })

                  Row(){
                    Text(this.model.col2_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else{
                Grid(){
                  GridItem(){
                    Stack({alignContent:Alignment.BottomStart}){
                      Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                        Image(this.model.col2_images[index].imagePath).objectFit(ImageFit.Fill)
                      }.params({ showImage: this.model.col2_images[index], targetPath: './QuiltedImageList' })

                      Row(){
                        Text(this.model.col2_images[index].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
                      }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                    }.padding(2)

                  }.width('88vp').height('88vp')

                  GridItem(){
                    Stack({alignContent:Alignment.BottomStart}){
                      Navigator({ target: './ImageScreen', type: NavigationType.Push }) {
                        Image(this.model.col2_images[index+1].imagePath).objectFit(ImageFit.Fill)
                      }.params({ showImage: this.model.col2_images[index+1], targetPath: './QuiltedImageList' })

                      Row(){
                        Text(this.model.col2_images[index+1].title).fontSize('12fp').fontWeight(FontWeight.Bold).fontColor(Color.White).padding(7)
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
        }.margin({top:'2vp',left:'5vp',right:'5vp',bottom:'30vp'}).alignItems(VerticalAlign.Top)
      }
      .scrollable(ScrollDirection.Vertical).scrollBar(BarState.Off)
    }
  }
}

class QuiltedImageListModel{
  col1_images: ImageData[]
  col2_images: ImageData[]
  helperArray1: number[] = new Array()
  helperArray2: number[] = new Array()

  constructor(col1_images:ImageData[],col2_images:ImageData[]){
    this.col1_images=col1_images
    this.col2_images=col2_images
    this.setSizes()
    this.buildHelperArray()

  }

  setSizes(){
    for(var i=0;i<this.col1_images.length;i++){
      if(i%4==0){
        this.col1_images[i].size = ImageSize.BIG_SQUARE
      }
      else if(i%4==1){
        this.col1_images[i].size = ImageSize.RECTANGLE
      }
      else{
        this.col1_images[i].size = ImageSize.SMALL_SQUARE
      }
    }

    for(var j=0;j<this.col2_images.length;j++){
      if(j%4==0 || j%4==1){
        this.col2_images[j].size = ImageSize.SMALL_SQUARE
      }
      else if(j%4==2){
        this.col2_images[j].size = ImageSize.RECTANGLE
      }
      else{
        this.col2_images[j].size = ImageSize.BIG_SQUARE
      }
    }
  }

  buildHelperArray(){
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
}