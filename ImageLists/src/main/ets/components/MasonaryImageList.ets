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

import { ImageData } from './ImageDataItem'

@Component
export struct masonaryImageList {
  @State images: ImageData[] = new Array()
  @State padding: number = 4
  private scroller: Scroller = new Scroller();
  private model: MasonaryImageListModel

  aboutToAppear() {
    this.model = new MasonaryImageListModel(this.images)
  }

  build() {
    Column() {
      Scroll(this.scroller) {
        Row() {
          Column() {
            ForEach([...new Array(this.model.images.length).keys()], (index: number) => {
              if ((index + 1) % 2 != 0) {
                Stack({ alignContent: Alignment.BottomStart }) {
                  Row() {
                    Image(this.model.images[index].imagePath).width('100%').height(this.model.images[index].height)
                  }

                  Row() {
                    Text(this.model.images[index].title)
                      .fontSize('12fp')
                      .fontWeight(FontWeight.Bold)
                      .fontColor(Color.White)
                      .padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(this.padding)
              }
            })
          }
          .width('50%')

          Column() {
            ForEach([...new Array(this.model.images.length).keys()], (index: number) => {
              if ((index + 1) % 2 == 0) {
                Stack({ alignContent: Alignment.BottomStart }) {
                  Row() {
                    Image(this.model.images[index].imagePath).width('100%').height(this.model.images[index].height)
                  }

                  Row() {
                    Text(this.model.images[index].title)
                      .fontSize('12fp')
                      .fontWeight(FontWeight.Bold)
                      .fontColor(Color.White)
                      .padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(this.padding)
              }
            })
          }
          .width('50%')
        }.margin({ top: '5vp', left: '5vp', right: '5vp', bottom: '30vp' }).alignItems(VerticalAlign.Top)
      }
      .scrollable(ScrollDirection.Vertical).scrollBar(BarState.Off)

    }
  }
}

class MasonaryImageListModel {
  images: ImageData[]

  constructor(images: ImageData[]) {
    this.images = images
    this.setHeights()
  }

  setHeights() {
    for (var i = 0;i < this.images.length; i++) {
      if (i % 8 == 0 || i % 8 == 4 || i % 8 == 5) {
        this.images[i].height = '224vp'
      }
      else if (i % 8 == 1 || i % 8 == 3 || i % 8 == 6) {
        this.images[i].height = '152vp'
      }
      else if (i % 8 == 2) {
        this.images[i].height = '112vp'
      }
      else {
        this.images[i].height = '184vp'
      }
    }
  }
}