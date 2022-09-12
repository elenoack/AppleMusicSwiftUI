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
    
    let rows = [
        GridItem(.flexible(minimum: 220, maximum: 220)),
    ]
    
    let doubleRows = [
        GridItem(.flexible(minimum: 220, maximum: 220)),
        GridItem(.flexible(minimum: 220, maximum: 220))
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HorizontalSectionTitleView(title: $title)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: hasTwoRows ? doubleRows : rows) {
                    ForEach(modelData.albums) { album in
                        HorizontalCellView(album: album)
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
            HorizontalSectionView(title: "Пространственное аудио")
                .environmentObject(ModelData())
        }
    }
}
