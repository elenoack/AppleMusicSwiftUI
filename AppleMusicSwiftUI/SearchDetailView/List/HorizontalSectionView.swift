//
//  HorizontalSectionView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 10.09.22.
//

import SwiftUI

struct HorizontalSectionView: View {
    
    @EnvironmentObject var modelData: ModelData
    @State var title: String
    @State var hasTwoRows = false
    var geometry: GeometryProxy
    
    let rows = [
        GridItem(.fixed(230))
    ]
    
    let doubleRows = [
        GridItem(.fixed(230)),
        GridItem(.fixed(230))
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HorizontalSectionTitleView(title: $title)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: hasTwoRows ? doubleRows : rows) {
                    ForEach(modelData.albums) { album in
                        HorizontalCellView(album: album)
                            .frame(width: geometry.size.width / 2.15)
                    }
                }
                .padding([.horizontal])
            }
        }
        .padding([.top])
    }
}

struct HorizontalSectionView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            HorizontalSectionView(title: "Пространственное аудио", geometry: geometry)
                .environmentObject(ModelData())
        }
    }
}
