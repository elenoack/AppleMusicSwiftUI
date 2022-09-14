//
//  MediaPlayerDetailView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 12.09.22.
//

import SwiftUI

struct MediaPlayerDetailView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State var track: AlbumDataModel
    @State var isPlaying = false
    let gradient = Gradient(colors: [.black, Color ("darkGray"), .gray])
    
    var body: some View {
        ZStack {
            Rectangle()
                .blur(radius: 20)
            VStack {
                VStack {
                    Capsule()
                        .fill(Color ("grayBackground").opacity(0.3))
                        .frame(width: 40, height: 5)
                        .cornerRadius(2)
                    Spacer(minLength: 50)
                    ImageView(track: track,
                              isPalying: $isPlaying)
                    Spacer()
                    TrackInfoView(track: track)
                    Spacer()
                    TimeView(duration: track)
                    Spacer()
                    PlayButtonView(isPlaying: $isPlaying)
                    Spacer()
                }
                VolumeView()
                BottomButtonsView()
                    .padding(.bottom)
            }
            .padding(.horizontal, 30)
            .background(LinearGradient(
                gradient: gradient,
                startPoint: .bottom,
                endPoint: .top))
        }
        .padding(.bottom)
        .background(.black)
        .gesture(
            DragGesture().onEnded { value in
                if value.location.y - value.startLocation.y > 100 {
                    dismiss()
                }
            }
        )
    }
}

struct MediaPlayerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MediaPlayerDetailView(track: AlbumDataModel.mocks.randomElement() ?? AlbumDataModel(author: "Леша Свик",song: "Танцевали до утра",image: "svik", duration: 180.0))
    }
}
