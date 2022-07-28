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

export enum ImageSize {
  BIG_SQUARE,
  RECTANGLE,
  SMALL_SQUARE
}

export class ImageData {
  id: number
  title: string
  imagePath: Resource
  width: string | number
  height: string | number
  size: ImageSize

  constructor(id: number, title: string, path: Resource, width?: string | number, height?: string | number, size?: ImageSize) {
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

  setImageWidth(width: number) {
    this.width = width
  }

  setImageHeight(height: number) {
    this.height = height
  }

  setImageSize(size: ImageSize) {
    this.size = size
  }
}