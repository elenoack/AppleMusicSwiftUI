//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
            ScrollView {
                
            }
            .foregroundColor(.white)
            .navigationTitle("Медиатека")
            .navigationBarItems(
                trailing: NavigationLink(
                    destination:
                            ListView(),
                    label: {
                        Text("Править")
                            .foregroundColor(.red)
                    }))
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

