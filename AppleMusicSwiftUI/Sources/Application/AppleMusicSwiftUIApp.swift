//
//  AppleMusicSwiftUIApp.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

@main
struct AppleMusicSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
        init() {
            UITabBar.appearance().backgroundColor = .systemGray6
        }
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(modelData)
        }
    }
}
