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

import { ImageSize, ImageData } from './imagedataitem'

@Component
export struct quiltedImageList {
  @State col1_images: ImageData[] = new Array()
  @State col2_images: ImageData[] = new Array()
  private scroller: Scroller = new Scroller();
  private model: QuiltedImageListModel

  aboutToAppear() {
    this.model = new QuiltedImageListModel(this.col1_images, this.col2_images)
  }

  build() {
    Column({ space: 5 }) {
      Scroll(this.scroller) {
        Row() {
          Column() {
            ForEach(this.model.helperArray1, (index: number) => {
              if (this.model.col1_images[index].size == ImageSize.BIG_SQUARE) {
                Stack({ alignContent: Alignment.BottomStart }) {
                  Row() {
                    Image(this.model.col1_images[index].imagePath).width('100%').height('181vp')
                  }

                  Row() {
                    Text(this.model.col1_images[index].title)
                      .fontSize('12fp')
                      .fontWeight(FontWeight.Bold)
                      .fontColor(Color.White)
                      .padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else if (this.model.col1_images[index].size == ImageSize.RECTANGLE) {
                Stack({ alignContent: Alignment.BottomStart }) {
                  Row() {
                    Image(this.model.col1_images[index].imagePath).width('100%').height('89vp')
                  }

                  Row() {
                    Text(this.model.col1_images[index].title)
                      .fontSize('12fp')
                      .fontWeight(FontWeight.Bold)
                      .fontColor(Color.White)
                      .padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else {
                Grid() {
                  GridItem() {
                    Stack({ alignContent: Alignment.BottomStart }) {
                      Row() {
                        Image(this.model.col1_images[index].imagePath).objectFit(ImageFit.Fill)
                      }

                      Row() {
                        Text(this.model.col1_images[index].title)
                          .fontSize('12fp')
                          .fontWeight(FontWeight.Bold)
                          .fontColor(Color.White)
                          .padding(7)
                      }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                    }.padding(2)

                  }.width('88vp').height('88vp')

                  GridItem() {
                    Stack({ alignContent: Alignment.BottomStart }) {
                      Row() {
                        Image(this.model.col1_images[index+1].imagePath).objectFit(ImageFit.Fill)
                      }

                      Row() {
                        Text(this.model.col1_images[index+1].title)
                          .fontSize('12fp')
                          .fontWeight(FontWeight.Bold)
                          .fontColor(Color.White)
                          .padding(7)
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

          Column() {
            ForEach(this.model.helperArray2, (index: number) => {
              if (this.model.col2_images[index].size == ImageSize.BIG_SQUARE) {
                Stack({ alignContent: Alignment.BottomStart }) {
                  Row() {
                    Image(this.model.col2_images[index].imagePath).width('100%').height('181vp')
                  }

                  Row() {
                    Text(this.model.col2_images[index].title)
                      .fontSize('12fp')
                      .fontWeight(FontWeight.Bold)
                      .fontColor(Color.White)
                      .padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else if (this.model.col2_images[index].size == ImageSize.RECTANGLE) {
                Stack({ alignContent: Alignment.BottomStart }) {
                  Row() {
                    Image(this.model.col2_images[index].imagePath).width('100%').height('89vp')
                  }

                  Row() {
                    Text(this.model.col2_images[index].title)
                      .fontSize('12fp')
                      .fontWeight(FontWeight.Bold)
                      .fontColor(Color.White)
                      .padding(7)
                  }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                }.padding(2)
              }
              else {
                Grid() {
                  GridItem() {
                    Stack({ alignContent: Alignment.BottomStart }) {
                      Row() {
                        Image(this.model.col2_images[index].imagePath).objectFit(ImageFit.Fill)
                      }

                      Row() {
                        Text(this.model.col2_images[index].title)
                          .fontSize('12fp')
                          .fontWeight(FontWeight.Bold)
                          .fontColor(Color.White)
                          .padding(7)
                      }.width('100%').height('25vp').backgroundColor(Color.Black).opacity(0.5)
                    }.padding(2)

                  }.width('88vp').height('88vp')

                  GridItem() {
                    Stack({ alignContent: Alignment.BottomStart }) {
                      Row() {
                        Image(this.model.col2_images[index+1].imagePath).objectFit(ImageFit.Fill)
                      }

                      Row() {
                        Text(this.model.col2_images[index+1].title)
                          .fontSize('12fp')
                          .fontWeight(FontWeight.Bold)
                          .fontColor(Color.White)
                          .padding(7)
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
        }.margin({ top: '2vp', left: '5vp', right: '5vp', bottom: '30vp' }).alignItems(VerticalAlign.Top)
      }
      .scrollable(ScrollDirection.Vertical).scrollBar(BarState.Off)
    }
  }
}

class QuiltedImageListModel {
  col1_images: ImageData[]
  col2_images: ImageData[]
  helperArray1: number[] = new Array()
  helperArray2: number[] = new Array()

  constructor(col1_images: ImageData[], col2_images: ImageData[]) {
    this.col1_images = col1_images
    this.col2_images = col2_images
    this.setSizes()
    this.buildHelperArray()

  }

  setSizes() {
    for (var i = 0;i < this.col1_images.length; i++) {
      if (i % 4 == 0) {
        this.col1_images[i].size = ImageSize.BIG_SQUARE
      }
      else if (i % 4 == 1) {
        this.col1_images[i].size = ImageSize.RECTANGLE
      }
      else {
        this.col1_images[i].size = ImageSize.SMALL_SQUARE
      }
    }

    for (var j = 0;j < this.col2_images.length; j++) {
      if (j % 4 == 0 || j % 4 == 1) {
        this.col2_images[j].size = ImageSize.SMALL_SQUARE
      }
      else if (j % 4 == 2) {
        this.col2_images[j].size = ImageSize.RECTANGLE
      }
      else {
        this.col2_images[j].size = ImageSize.BIG_SQUARE
      }
    }
  }

  buildHelperArray() {
    var i = 0;
    while (i < this.col1_images.length) {
      if (this.col1_images[i].size == ImageSize.BIG_SQUARE) {
        this.helperArray1.push(i);
        i++;
      }
      else if (this.col1_images[i].size == ImageSize.RECTANGLE) {
        this.helperArray1.push(i);
        i++;
      }
      else {
        this.helperArray1.push(i);
        i += 2;
      }
    }
    i = 0;
    while (i < this.col2_images.length) {
      if (this.col2_images[i].size == ImageSize.BIG_SQUARE) {
        this.helperArray2.push(i);
        i++;
      }
      else if (this.col2_images[i].size == ImageSize.RECTANGLE) {
        this.helperArray2.push(i);
        i++;
      }
      else {
        this.helperArray2.push(i);
        i += 2;
      }
    }
  }
}