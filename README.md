# ImageLists
Image lists display a collection of images in an organized grid.

![]()

## Download & Install
Install using npm

```npm i @ohos/imageLists```

Details about OpenHarmony NPM environment configuration, see at [here](https://gitee.com/openharmony-tpc/docs/blob/master/OpenHarmony_npm_usage.md)



## Usage instructions
1. Add dependencies

For using ImageLists in your app, add the below dependency in the entry/package.json  
```
"dependencies": {
    "@ohos/imageLists": "file:../ImageLists"
  }
```

2. Handle imports

Import these container components and class objects
```
import { ImageData, standardImageList, quiltedImageList, wovenImageList, masonaryImageList } from "@ohos/imageLists"
```

## Usage
Image lists represent a collection of items in a repeated pattern. They help improve the visual comprehension of the content they hold.

The user needs to provide the path and title of the images to be shown in the collection as below:

```
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
    new ImageData(10, "Picture_Title", $r("app.media.img_10"))
    ]
```

### Types

**1. Standard image lists** 

Standard image lists are best for items of equal importance. They have a uniform container size, ratio, and padding.

![]()

Sample code for using standard image lists container component
```
standardImageList({ images: this.images, padding: this.padding })
```

**2. Quilted image lists** 

Quilted image lists emphasize certain items over others in a collection. They create hierarchy using varied container sizes and ratios.

![]()

Sample code for using quilted image lists container component
```
quiltedImageList({ col1_images: this.col1_images, col2_images: this.col2_images, padding: this.padding})
```

**3. Woven image lists** 

Woven image lists facilitate the browsing of peer content. They display content in containers of varying ratios to create a rhythmic layout.

![]()

Sample code for using woven image lists container component
```
wovenImageList({ images: this.images, padding: this.padding})
```

**4. Masonry image lists**

Masonry image lists facilitate the browsing of uncropped peer content. Container heights are sized based on the image size.

![]()

Sample code for using masonary image lists container component
```
masonaryImageList({ images: this.images, padding: this.padding })
```

## Directory Structure
```
|---- ImageLists (Project Name)
|     |---- ImageLists (Library Name)
|           |---- src
|                 |---- main
|                       |---- ets
|                             |---- components
|                                   |---- ImageDataItem.ets
|                                   |---- StandardImageLists.ets
|                                   |---- QuiltedImageLists.ets
|                                   |---- WovenImageLists.ets
|                                   |---- MasonaryImageLists.ets
|                                   |---- MonthCalendar.ets
|                                  
|           |---- index.ets
|
|     |---- entry
|           |---- src
|                 |---- main
|                       |---- ets
|                             |----pages
|                                   |---- MainScreen.ets
|                                   |---- SelectedList.ets

```

## Compatibility
Supports OpenHarmony API version 9


## Code Contribution
If you find any problems during usage, you can submit an [issue](https://github.com/Applib-OpenHarmony/ImageLists/issues) to us. Of course, we also welcome you to send us PR.


## Open source License
This project is based on [Apache License 2.0](./LICENSE), please enjoy and participate in open source freely.
