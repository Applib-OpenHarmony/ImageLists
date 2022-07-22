export class ImageData {
  id: number
  title: string
  imagePath: Resource

  constructor(id: number, title: string, path: Resource) {
    this.id = id
    this.title = title
    this.imagePath = path
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