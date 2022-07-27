import {ImageData} from '@ohos/imageLists'

@Entry
@Component
struct DemoScreen{
  // image paths
  private images: ImageData[] = [
    new ImageData(1, "Picture_Title", $r("app.media.img_1")),
    new ImageData(2, "Picture_Title", $r("app.media.img_2")),
    new ImageData(3, "Picture_Title", $r("app.media.img_3")),
    new ImageData(4, "Picture_Title", $r("app.media.img_4")),
    new ImageData(5, "Picture_Title", $r("app.media.img_5")),
    new ImageData(6, "Picture_Title", $r("app.media.img_6")),
    new ImageData(7, "Picture_Title", $r("app.media.img_7")),
    new ImageData(8, "Picture_Title", $r("app.media.img_8")),
    new ImageData(9, "Picture_Title", $r("app.media.img_9")),
    new ImageData(10, "Picture_Title", $r("app.media.img_10")),
    new ImageData(11, "Picture_Title", $r("app.media.img_11")),
    new ImageData(12, "Picture_Title", $r("app.media.img_12")),
    new ImageData(13, "Picture_Title", $r("app.media.img_13")),
    new ImageData(14, "Picture_Title", $r("app.media.img_14")),
    new ImageData(15, "Picture_Title", $r("app.media.img_15")),
    new ImageData(16, "Picture_Title", $r("app.media.img_16")),
    new ImageData(17, "Picture_Title", $r("app.media.img_17")),
    new ImageData(18, "Picture_Title", $r("app.media.img_18")),
  ]
  private quilted_images_column1: ImageData[] = [
    new ImageData(1, "Picture_Title", $r("app.media.quilted_img_1")),
    new ImageData(2, "Picture_Title", $r("app.media.quilted_img_5")),
    new ImageData(3, "Picture_Title", $r("app.media.quilted_img_8")),
    new ImageData(4, "Picture_Title", $r("app.media.quilted_img_9")),
    new ImageData(5, "Picture_Title", $r("app.media.quilted_img_11")),
    new ImageData(6, "Picture_Title", $r("app.media.quilted_img_12")),
    new ImageData(7, "Picture_Title", $r("app.media.quilted_img_13")),
    new ImageData(8, "Picture_Title", $r("app.media.quilted_img_15")),
  ]
  private quilted_images_column2:  ImageData[] = [
    new ImageData(1, "Picture_Title", $r("app.media.quilted_img_2")),
    new ImageData(2, "Picture_Title", $r("app.media.quilted_img_3")),
    new ImageData(3, "Picture_Title", $r("app.media.quilted_img_4")),
    new ImageData(4, "Picture_Title", $r("app.media.quilted_img_6")),
    new ImageData(5, "Picture_Title", $r("app.media.quilted_img_7")),
    new ImageData(6, "Picture_Title", $r("app.media.quilted_img_10")),
    new ImageData(7, "Picture_Title", $r("app.media.quilted_img_14")),
    new ImageData(8, "Picture_Title", $r("app.media.quilted_img_16")),
    new ImageData(9, "Picture_Title", $r("app.media.quilted_img_17")),
    new ImageData(10, "Picture_Title", $r("app.media.quilted_img_18")),
  ]

  build(){
    Column({space:5}){
      Flex({ justifyContent: FlexAlign.Start }) {
        Button({ type: ButtonType.Circle }) {
          Image($r("app.media.menu")).width("30vp").height("30vp")
        }.width("30vp").height("30vp").margin({ left: "10vp" }).backgroundColor(Color.White)

        Text('Image Lists')
          .fontFamily("San Francisco")
          .fontSize("25fp")
          .fontWeight(FontWeight.Bold)
          .margin({ left: "20vp", bottom: "20vp" })
      }

      Divider().width('100%').strokeWidth("4vp").color(0xEAEAEA)

      Navigator({ target: 'ImageLists/ImageLists/src/main/ets/components/StandardImageList', type: NavigationType.Push }) {
        Text('Standard Image lists')
          .fontSize('20fp').width('100%').textAlign(TextAlign.Center)
      }.margin({top:'15vp'})
      .params({ images: this.images, width:'117vp', height: '117vp',padding: 3 })

      Divider().margin({top:'10vp',bottom:'10vp'}).color(Color.Grey).width('100%').height('20vp').strokeWidth(2)

      Navigator({ target: 'ImageLists/ImageLists/src/main/ets/components/QuiltedImageList', type: NavigationType.Push }) {
        Text('Quilted Image lists')
          .fontSize('20fp').width('100%').textAlign(TextAlign.Center)
      }
      .params({ col1_images: this.quilted_images_column1,col2_images: this.quilted_images_column2 , padding: 4 })

      Divider().margin({top:'10vp',bottom:'10vp'}).color(Color.Grey).width('100%').height('20vp').strokeWidth(2)

      Navigator({ target: 'ImageLists/ImageLists/src/main/ets/components/WovenImageList', type: NavigationType.Push }) {
        Text('Woven Image lists')
          .fontSize('20fp').width('100%').textAlign(TextAlign.Center)
      }
      .params({ images: this.images })

      Divider().margin({top:'10vp',bottom:'10vp'}).color(Color.Grey).width('100%').height('20vp').strokeWidth(2)

      Navigator({ target: 'ImageLists/ImageLists/src/main/ets/components/MasonaryImageList', type: NavigationType.Push }) {
        Text('Masonary Image lists')
          .fontSize('20fp').width('100%').textAlign(TextAlign.Center)
      }
      .params({ images: this.images, padding:3 })

      Divider().margin({top:'10vp',bottom:'10vp'}).color(Color.Grey).width('100%').height('20vp').strokeWidth(2)

    }
  }
}