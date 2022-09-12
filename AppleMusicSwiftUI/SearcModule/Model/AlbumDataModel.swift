//
//  AlbumDataModel.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 09.09.22.
//

import Foundation

struct AlbumDataModel: Hashable, Identifiable {
    var id = UUID()
    var author: String
    var song: String
    var image: String
    
    static var mocks: [AlbumDataModel] = [
        AlbumDataModel(author: "Fall Out Boy",
                       song: "This Ain't a Scene",
                       image: "fallOutBoy"),
        AlbumDataModel(author: "Iggy Pop",
                       song: "The Passenger",
                       image: "iggyPop"),
        AlbumDataModel(author: "Пилот",
                       song: "Шнурок",
                       image: "пилот"),
        AlbumDataModel(author: "Земфира",
                       song: "Прости меня моя любовь",
                       image: "земфира"),
        AlbumDataModel(author: "Иоганн Себастьян Бах",
                       song: "Sonata in E Minor BWV 1034: Allegro",
                       image: "bach"),
        AlbumDataModel(author: "Chaёl",
                       song: "Don't speak",
                       image: "chaёl"),
    ]
}
