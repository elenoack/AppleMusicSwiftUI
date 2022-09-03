//
//  MainView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

struct  MainView: View {
    var body: some View {
        ZStack {
            TabView {
                NavigationView {
                    LibraryView()
                }
                .tabItem {
                    Text("Медиатека")
                    Image("note")
                        .renderingMode(.template)
                }
                NavigationView {
                RadioView()
                }
                    .tabItem {
                        Text("Радио")
                        Image(systemName:"dot.radiowaves.left.and.right")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                Text("Поиск")
                    .tabItem {
                        Text("Поиск")
                        Image(systemName:"magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
            }
            .accentColor(.red)
            PlayerView()
                .offset(y: -33)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

