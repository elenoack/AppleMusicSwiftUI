//
//  CategoryModel.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 09.09.22.
//

import Foundation

struct CategoryModel: Identifiable, Hashable {
    var id = UUID()
    let title: String
    let image: String

    static var mocks: [CategoryModel] = [
        CategoryModel(title: "Пространственное аудио",image: "audio"),
        CategoryModel(title: "Главное", image: "great"),
        CategoryModel(title: "Спокойствие", image: "calm"),
        CategoryModel(title: "Для детей", image: "children"),
        CategoryModel(title: "Спорт", image: "sport"),
        CategoryModel(title: "Чарты", image: "charts"),
        CategoryModel(title: "Сон", image: "sleep"),
        CategoryModel(title: "Хиты", image: "hitsSquare"),
        CategoryModel(title: "2010-е", image: "2010"),
        CategoryModel(title: "2000-е", image: "2000"),
        CategoryModel(title: "90-е", image: "90"),
        CategoryModel(title: "80-е", image: "80"),
        CategoryModel(title: "Танцевальная", image: "dance"),
        CategoryModel(title: "K-Pop", image: "popSquare"),
        CategoryModel(title: "Альтернатива", image: "alternative"),
        CategoryModel(title: "Электроника", image: "electronics"),
    ]
}

                             
