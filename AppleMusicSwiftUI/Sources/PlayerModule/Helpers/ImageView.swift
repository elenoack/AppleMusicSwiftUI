//
//  ImageView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 12.09.22.
//

import SwiftUI

struct ImageView: View {
    
    @State var track: AlbumDataModel
    @Binding var isPalying: Bool
    
    var body: some View {
        Image(track.image)
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .scaledToFit()
            .scaleEffect(isPalying ? 1 : 0.8)
            .shadow(color: Color ("darkGray"), radius: 8, x: 0, y: 9)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(track: AlbumDataModel.mocks.randomElement() ?? AlbumDataModel(author: "Леша Свик",song: "Танцевали до утра",image: "svik", duration: 180),
                  isPalying: .constant(false))
    }
}
