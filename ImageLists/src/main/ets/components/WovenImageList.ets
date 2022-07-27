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

import { ImageData } from './imagedataitem'

@Component
export struct wovenImageList {
  @State images: ImageData[] = new Array()
  private scroller: Scroller = new Scroller()

  build() {
    Column({ space: 5 }) {
      Grid(this.scroller) {
        ForEach([...new Array(this.images.length).keys()], (index: number) => {
          GridItem() {
            Column() {
              if ((index + 1) % 4 == 1) {
                Image(this.images[index].imagePath)
                  .objectFit(ImageFit.Fill)
                  .width('161vp')
                  .height('167vp')
                  .margin({ top: '33vp' })
              }
              else if ((index + 1) % 4 == 0) {
                Image(this.images[index].imagePath)
                  .objectFit(ImageFit.Fill)
                  .width('161vp')
                  .height('167vp')
                  .margin({ top: '23vp' })
              }
              else {
                Image(this.images[index].imagePath)
                  .objectFit(ImageFit.Fill)
                  .width('161vp')
                  .height('233vp')
              }
              Text(this.images[index].title)
                .height('19vp')
                .fontSize('16vp')
                .fontFamily("Times")
                .fontWeight(FontWeight.Bold)
                .margin({ top: '5vp', left: '5vp', bottom: '5vp' })
            }.width('100%').height('100%').alignItems(HorizontalAlign.Start)

          }
          .width('161vp')
          .height('280vp')
        })
      }
      .columnsTemplate('1fr 1fr')
      .margin({ bottom: '50vp' })
      .padding(5)
    }
  }
}