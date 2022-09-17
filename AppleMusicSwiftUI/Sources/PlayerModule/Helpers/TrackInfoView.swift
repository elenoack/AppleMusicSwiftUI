//
//  TrackInfoView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 12.09.22.
//

import SwiftUI

struct TrackInfoView: View {
    
    @State var track: AlbumDataModel
    
    var body: some View {
        HStack(spacing: 5) {
            VStack(alignment: .leading, spacing: 2) {
                Text(track.song)
                    .fontWeight(.bold)
                    .foregroundColor(Color ("grayBackground"))
                    .frame(height: 30)
                Text(track.author)
                    .foregroundColor(.gray)
            }
            .font(.title2)
            .lineLimit(1)
            Spacer()
            PlayerMenu()
        }
    }
}

struct TrackInfoView_Previews: PreviewProvider {
    static var previews: some View {
        TrackInfoView(track: AlbumDataModel.mocks.randomElement() ?? AlbumDataModel(author: "Леша Свик",song: "Танцевали до утра",image: "svik", duration: 186.0))
    }
}
