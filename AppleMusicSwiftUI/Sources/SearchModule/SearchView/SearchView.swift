//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 09.09.22.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ZStack {
            ScrollView {
                CategorySearchView(category: CategoryModel.mocks[0])
            }
            .navigationBarTitle("Поиск", displayMode: .large)
            .navigationViewStyle(.stack)
            .searchable(text: $searchText,
                        placement: .navigationBarDrawer(displayMode: .always),
                        prompt: "Артисты, песни, тексты и т.д.") {
                
                if searchText.isEmpty {
                    ForEach(modelData.albums, id: \.self) { result in
                        AlbumSectionView(album: result) }
                } else {
                    ForEach(modelData.albums.filter { $0.song.contains(searchText) || $0.author.contains(searchText)  }) { result in
                        AlbumSectionView(album: result)
                    }
                }
            }
            PlayerView()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environmentObject(ModelData())
    }
}
