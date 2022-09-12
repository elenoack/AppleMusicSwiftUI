//
//  HorizontalListCellView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 10.09.22.
//

import SwiftUI

struct HorizontalListCellView: View {
    
    var album: AlbumDataModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image(album.image)
                .resizable()
                .scaledToFit()
                .frame(width: 46, height: 46)
                .cornerRadius(5)
                .padding(.top, 5)
            VStack {
                Divider()
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(album.song)
                            .foregroundColor(.primary)
                            .lineLimit(0)
                            .minimumScaleFactor(0.01)
                        Text(album.author)
                            .foregroundColor(.secondary)
                            .font(.caption)
                    }
                    Spacer()
                    Image(systemName: "ellipsis")
                        .padding(.trailing)
                }
                .frame(maxHeight: .infinity)
            }
            .frame(height: 46)
        }
    }
}

struct HorizontalListCellView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalListCellView(album: AlbumDataModel.mocks[0])
    }
}
