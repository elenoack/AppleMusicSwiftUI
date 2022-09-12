//
//  HorizontalListView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 10.09.22.
//

import SwiftUI

struct HorizontalListView: View {
    
    @EnvironmentObject var modelData: ModelData
    var geometry: GeometryProxy
    @State var title: String
    let rows = [
        GridItem(.fixed(51)),
        GridItem(.fixed(51))
    ]

    var body: some View {
        VStack(alignment: .leading) {
            HorizontalSectionTitleView(title: $title)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(modelData.albums) { album in
                        HorizontalListCellView(album: album)
                            .frame(width: geometry.size.width * 0.92)
                    }
                }
                .padding([.horizontal])
            }
        }
        .padding([.top])
    }
}

struct HorizontalListViewView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            HorizontalListView(geometry: geometry, title: "Популярные треки")
                .environmentObject(ModelData())
        }
    }
}

