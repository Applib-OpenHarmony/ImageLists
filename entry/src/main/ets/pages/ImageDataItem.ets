export enum ImageSize{
  BIG_SQUARE,
  RECTANGLE,
  SMALL_SQUARE
}
export class ImageData {
  id: number
  title: string
  imagePath: Resource
  width: string|number
  height: string|number
  size: ImageSize

  constructor(id: number, title: string, path: Resource, width?:string|number, height?:string|number, size?:ImageSize) {
    this.id = id
    this.title = title
    this.imagePath = path
    this.width = width
    this.height = height
    this.size = size
  }

  getId(): number {
    return this.id
  }

  getTitle(): string {
    return this.title
  }

  getPath(): Resource {
    return this.imagePath
  }
}