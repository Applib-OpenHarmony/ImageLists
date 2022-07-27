/*
 * Copyright (C) 2022 Application Library Engineering Group
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import { standardImageList, quiltedImageList, wovenImageList, masonaryImageList } from "@ohos/imageLists"
import router from '@system.router'

@Entry
@Component
struct SelectedList {
  private selectedList: any = router.getParams().selectedList
  private images: any
  private col1_images: any
  private col2_images: any
  private padding: any = router.getParams().padding

  aboutToAppear() {
    if (this.selectedList == 1) {
      this.col1_images = router.getParams().col1_images
      this.col2_images = router.getParams().col2_images
    }
    else {
      this.images = router.getParams().images
    }
  }

  build() {
    Column({ space: 5 }) {
      Flex({ justifyContent: FlexAlign.Start }) {
        Column() {
          Row() {
            Navigator({ target: 'pages/MainScreen', type: NavigationType.Back }) {
              Image($r("app.media.back_icon")).width('25vp').height('20vp').objectFit(ImageFit.Contain)
            }.margin({ right: '15vp' })

            Text("Pictures")
              .width('120vp')
              .height('30vp')
              .fontFamily("Arial")
              .fontSize('28fp')
              .fontWeight(FontWeight.Bold)
              .fontColor(Color.White);
          }
        }.width('50%').margin({ left: '15vp', top: '10vp' }).alignItems(HorizontalAlign.Start)

        Column() {
          Row() {
            Button({ type: ButtonType.Circle }) {
              Image($r("app.media.dotmenu")).width('20vp').height('20vp').objectFit(ImageFit.Contain)
            }.width('20vp').height('20vp').backgroundColor("#a000e3")
          }.height('30vp')
        }.width('30%').margin({ left: '15vp', top: '10vp' }).alignItems(HorizontalAlign.End)

      }.width('100%').height('66vp').backgroundColor("#a000e3")

      if (this.selectedList == 0) {
        standardImageList({ images: this.images, imgHeight: '117vp', imgWidth: '117vp', padding: this.padding })
      }
      else if (this.selectedList == 1) {
        quiltedImageList({ col1_images: this.col1_images, col2_images: this.col2_images })
      }
      else if (this.selectedList == 2) {
        wovenImageList({ images: this.images })
      }
      else {
        masonaryImageList({ images: this.images, padding: this.padding })
      }
    }
  }
}