import ImageDataItem from './imagedataitem'
@Entry
@Component
struct DemoScreen{
  // image paths
  @State images: ImageDataItem[] = [
    {
      path: 'app.media.img_1',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_2',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_3',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_4',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_5',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_6',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_7',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_8',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_9',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_10',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_11',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_12',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_13',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_14',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_15',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_16',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_17',
      title: 'Picture_Title',
    },
    {
      path: 'app.media.img_18',
      title: 'Picture_Title',
    },
  ]

  // images url
  @State images2: ImageDataItem[] = [
    {
      path: 'https://images.unsplash.com/photo-1551963831-b3b1ca40c98e',
      title: 'Breakfast',
    },
    {
      path: 'https://images.unsplash.com/photo-1551782450-a2132b4ba21d',
      title: 'Burger',
    },
    {
      path: 'https://images.unsplash.com/photo-1522770179533-24471fcdba45',
      title: 'Camera',
    },
    {
      path: 'https://images.unsplash.com/photo-1444418776041-9c7e33cc5a9c',
      title: 'Coffee',
    },
    {
      path: 'https://images.unsplash.com/photo-1533827432537-70133748f5c8',
      title: 'Hats',
    },
    {
      path: 'https://images.unsplash.com/photo-1558642452-9d2a7deb7f62',
      title: 'Honey',
    },
    {
      path: 'https://images.unsplash.com/photo-1516802273409-68526ee1bdd6',
      title: 'Basketball',
    },
    {
      path: 'https://images.unsplash.com/photo-1518756131217-31eb79b20e8f',
      title: 'Fern',
    },
    {
      path: 'https://images.unsplash.com/photo-1597645587822-e99fa5d45d25',
      title: 'Mushrooms',
    },
    {
      path: 'https://images.unsplash.com/photo-1567306301408-9b74779a11af',
      title: 'Tomato basil',
    },
    {
      path: 'https://images.unsplash.com/photo-1471357674240-e1a485acb3e1',
      title: 'Sea star',
    },
    {
      path: 'https://images.unsplash.com/photo-1589118949245-7d38baf380d6',
      title: 'Bike',
    },
    {
      path: 'https://images.unsplash.com/photo-1549388604-817d15aa0110',
      title: 'Bed',
    },
    {
      path: 'https://images.unsplash.com/photo-1525097487452-6278ff080c31',
      title: 'Books',
    },
    {
      path: 'https://images.unsplash.com/photo-1523413651479-597eb2da0ad6',
      title: 'Sink',
    },
    {
      path: 'https://images.unsplash.com/photo-1563298723-dcfebaa392e3',
      title: 'Kitchen',
    },
    {
      path: 'https://images.unsplash.com/photo-1588436706487-9d55d73a39e3',
      title: 'Blinds',
    },
    {
      path: 'https://images.unsplash.com/photo-1574180045827-681f8a1a9622',
      title: 'Chairs',
    },
  ]
  build(){
    Column({space:5}){
      Navigator({ target: 'pages/StandardImageList', type: NavigationType.Push }) {
        Text('Go to standard image lists page')
          .fontSize(20).width('100%').textAlign(TextAlign.Center)
      }
      .params({ images: this.images })
    }
  }
}