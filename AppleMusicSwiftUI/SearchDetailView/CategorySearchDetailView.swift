//
//  CategorySearchDetailView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 09.09.22.
//

import SwiftUI

struct CategorySearchDetailView: View {
    
        @EnvironmentObject var modelData: ModelData
    
        var body: some View {
            ZStack {
                VStack(alignment: .leading) {
                    GeometryReader { geometry in
                        ScrollView(.vertical, showsIndicators: true) {
                            FavoritePlayList(geometry: geometry)
                            HorizontalSectionView(title: "Популярные плейлисты", hasTwoRows: true, geometry: geometry)
                            HorizontalListView(geometry: geometry, title: "Лучшие новые треки")
                            HorizontalSectionView(title: "Пространственное аудио", geometry: geometry)
                        }
                    }
                }
                .navigationTitle("Главное")
                .navigationBarTitleDisplayMode(.large)
                .padding(.bottom, 80)
            }
        }
    }
    
struct CategorySearchDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchDetailView()
            .environmentObject(ModelData())
    }
}

