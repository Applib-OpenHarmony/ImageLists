export class ImageData {
  id: number
  title: string
  imagePath: Resource
  width: string|number
  height: string|number

  constructor(id: number, title: string, path: Resource, width?:string|number, height?:string|number) {
    this.id = id
    this.title = title
    this.imagePath = path
    this.width = width
    this.height = height
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