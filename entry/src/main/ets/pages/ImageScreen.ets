import router from '@system.router'
import {ImageData} from './imagedataitem'

@Entry
@Component
struct imageScreen{
  private showImage: any = router.getParams().showImage
  private targetPath: any = router.getParams().targetPath
  build(){
    Column(){
      Navigator({target:this.targetPath,type:NavigationType.Back}){
        Image(this.showImage.imagePath).width('100%').height('100%').objectFit(ImageFit.Contain)
      }
    }.backgroundColor(ColorMode.DARK)
  }
}