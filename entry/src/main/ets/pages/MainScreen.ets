import {ImageData} from './imagedataitem'
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

  private masonary_images: ImageData[] = [
    new ImageData(1, "Picture_Title", $r("app.media.masonary_img_1"),0, '224vp'),
    new ImageData(2, "Picture_Title", $r("app.media.masonary_img_2"),0, '152vp'),
    new ImageData(3, "Picture_Title", $r("app.media.masonary_img_3"),0, '112vp'),
    new ImageData(4, "Picture_Title", $r("app.media.masonary_img_4"),0, '152vp'),
    new ImageData(5, "Picture_Title", $r("app.media.masonary_img_5"),0, '224vp'),
    new ImageData(6, "Picture_Title", $r("app.media.masonary_img_6"),0, '224vp'),
    new ImageData(7, "Picture_Title", $r("app.media.masonary_img_7"),0, '152vp'),
    new ImageData(8, "Picture_Title", $r("app.media.masonary_img_8"),0, '184vp'),
  ]
  build(){
    Column({space:5}){
      Navigator({ target: 'pages/StandardImageList', type: NavigationType.Push }) {
        Text('Go to standard image lists page')
          .fontSize(20).width('100%').textAlign(TextAlign.Center)
      }.margin({top:10})
      .params({ images: this.images, width:'117vp', height: '117vp',padding: 4 })

      Divider().margin({top:10,bottom:10}).color(Color.Grey).width('100%').height(20).strokeWidth(2)

      Navigator({ target: 'pages/QuiltedImageList', type: NavigationType.Push }) {
        Text('Go to quilted image lists page')
          .fontSize(20).width('100%').textAlign(TextAlign.Center)
      }
      .params({ images: this.images, width:'117vp', height: '117vp',padding: 4 })

      Divider().margin({top:10,bottom:10}).color(Color.Grey).width('100%').height(20).strokeWidth(2)

      Navigator({ target: 'pages/WovenImageList', type: NavigationType.Push }) {
        Text('Go to woven image lists page')
          .fontSize(20).width('100%').textAlign(TextAlign.Center)
      }
      .params({ images: this.images })

      Divider().margin({top:10,bottom:10}).color(Color.Grey).width('100%').height(20).strokeWidth(2)

      Navigator({ target: 'pages/MasonaryImageList', type: NavigationType.Push }) {
        Text('Go to masonary image lists page')
          .fontSize(20).width('100%').textAlign(TextAlign.Center)
      }
      .params({ images: this.masonary_images, padding:5 })
    }
  }
}