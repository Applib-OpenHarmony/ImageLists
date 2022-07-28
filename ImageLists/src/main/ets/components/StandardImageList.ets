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
export struct standardImageList {
  @State images: ImageData[] = new Array()
  @State imgWidth: string | number = 0
  @State imgHeight: string | number = 0
  @State padding: number = 4
  private scroller: Scroller = new Scroller();

  build() {
    Column({ space: 5 }) {
      Grid(this.scroller) {
        ForEach(this.images, (img: ImageData) => {
          GridItem() {
            Image(img.imagePath)
              .objectFit(ImageFit.Fill)
          }
          .width(this.imgWidth)
          .height(this.imgHeight)
          .padding(this.padding)
        })
      }
      .columnsTemplate('1fr 1fr 1fr')
      .margin({ left: '5vp', right: '5vp', bottom: '30vp' })
    }
  }
}
