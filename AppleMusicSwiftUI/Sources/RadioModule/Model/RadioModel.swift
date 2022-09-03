//
//  RadioModel.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 02.09.22.
//

import Foundation

struct RadioModel: Identifiable, Hashable {
    var id = UUID()
    var description: String
    var imageName: String
    var stationImageName: String
    var stationDescription: String
    
    static var mocks: [RadioModel] = [RadioModel(description: "Легкий поп",
                                                 imageName: "lightpop",
                                                 stationImageName: "popStation",
                                                 stationDescription: "Поп на русском"),
                                      RadioModel(description: "Хиты",
                                                 imageName: "hits",
                                                 stationImageName: "hitsStation",
                                                 stationDescription: "Хиты"),
                                      RadioModel(description: "Хип-xоп",
                                                 imageName: "hiphop",
                                                 stationImageName: "hiphopStation",
                                                 stationDescription: "Хип-хоп на русском"),
                                      RadioModel(description: "Поп-музыка",
                                                 imageName: "pop",
                                                 stationImageName: "popСlassicStation",
                                                 stationDescription: "Классика хип-хопа"),
                                      RadioModel(description: "Классика рока",
                                                 imageName: "rock",
                                                 stationImageName: "rockStation",
                                                 stationDescription: "Рок на русском"),
                                      RadioModel(description: "Смус-джаз",
                                                 imageName: "jazz",
                                                 stationImageName: "jazzStation",
                                                 stationDescription: "Смус-джаз"),
                                      RadioModel(description: "Чилаут",
                                                 imageName: "chill",
                                                 stationImageName: "chillStation",
                                                 stationDescription: "Чилаут"),]
}

