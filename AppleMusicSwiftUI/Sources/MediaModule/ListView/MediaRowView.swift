//
//  MediaRowView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 28.08.22.
//

import SwiftUI

struct MediaRowView: View {
    let media: ListModel
    var body: some View {
        HStack {
            Image(systemName: media.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 29, height: 23)
                .foregroundColor(.red)
            Text(media.name)
                .font(.title3)
                .padding([.top, .bottom], 8)
        }
        .listRowBackground(Color.primary.colorInvert())
    }
}

struct MediaRowView_Previews: PreviewProvider {
    static var previews: some View {
        MediaRowView(media: ListModel.mocks[0])
            .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/400.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
