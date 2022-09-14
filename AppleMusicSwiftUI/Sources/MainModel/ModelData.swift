//
//  ModelData.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 09.09.22.
//

import Foundation

 class ModelData: ObservableObject {
    @Published var albumsCategory: [AlbumCategoryModel] = AlbumCategoryModel.mocks
    @Published var albums: [AlbumDataModel] = AlbumDataModel.mocks
    @Published var media: [ListModel] = ListModel.mocks
    @Published var category: [CategoryModel] = CategoryModel.mocks
    @Published var radio: [RadioModel] = RadioModel.mocks
}
