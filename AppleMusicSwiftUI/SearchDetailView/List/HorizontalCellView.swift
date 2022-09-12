//
//  HorizontalCellView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 10.09.22.
//

import SwiftUI

struct HorizontalCellView: View {
    
    @EnvironmentObject var modelData: ModelData
    var album: AlbumDataModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
                Image(album.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(6)
                Text(album.song)
                    .foregroundColor(.primary)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    .lineLimit(0)
                    .minimumScaleFactor(0.01)
                Text(album.author)
                    .foregroundColor(.secondary)
                    .font(.caption)
                    .lineLimit(0)
                    .minimumScaleFactor(0.01)
            }
        }
    }

struct HorizontalCellView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        HorizontalCellView(album: modelData.albums[0])
    }
}
