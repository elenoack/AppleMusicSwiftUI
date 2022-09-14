//
//  FavoritePlayListSection.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 09.09.22.
//

import SwiftUI

struct FavoritePlayListSection: View {
    
    var album: AlbumCategoryModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Text("Избранный плейлист")
                .font(.caption2)
                .foregroundColor(.secondary)
                .textCase(.uppercase)
            Text(album.titleDescription)
                .foregroundColor(.primary)
                .font(.title3)
                .textCase(.uppercase)
            Text(album.title)
                .foregroundColor(.secondary)
                .textCase(.uppercase)
                .font(.title3)
            ZStack(alignment: .bottomLeading) {
                Image(album.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                Text(album.title)
                    .font(.caption)
                    .padding(10)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .bottomLeading)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
                            .opacity(0.5)
                        )
                    .shadow(color: .black, radius: 8, x: 0, y: -5)
            }
            .cornerRadius(10)
            .clipped()
        }
    }
}

struct FavoritePlayListSection_Previews: PreviewProvider {
    static var previews: some View {
        FavoritePlayListSection(album: AlbumCategoryModel.mocks[0])
    }
}
