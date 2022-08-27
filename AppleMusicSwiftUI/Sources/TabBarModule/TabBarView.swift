//
//  TabBarView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
            TabView {
                NavigationView {
                LibraryView()
                }
                    .tabItem {
                        Text("Медиатека")
                        Image("note")
                            .renderingMode(.template)
                    }
                
                Text("Радио")
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
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
