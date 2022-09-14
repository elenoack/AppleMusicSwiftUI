//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

struct PlayerView: View {
    
    @State private var isShowingDetailsPlayer = false
    @State private var track = AlbumDataModel.mocks.randomElement()
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 16) {
                HStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color ("playerColor"))
                            .frame(width: 60, height: 60)
                            .cornerRadius(9)
                            .shadow(radius: 6)
                            .padding()
                        Image("\(track?.image ?? "music.note")")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .cornerRadius(9)
                            .shadow(radius: 6)
                            .scaledToFit()
                            .foregroundColor(Color.gray)
                    }
                    Text(track?.song ?? "Не исполняется").foregroundColor(colorScheme == .dark ? Color.white : Color.black)
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.title3)
                            .foregroundColor(colorScheme == .dark ? (Color ("grayBackground")) : Color.black)
                    }.buttonStyle(PlainButtonStyle())
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.title3)
                            .foregroundColor(colorScheme == .dark ? (Color ("grayBackground")) : Color.black)
                    }.buttonStyle(PlainButtonStyle())
                        .padding()
                }
                .background(colorScheme == .light ? (Color ("grayBackground")) : (Color ("grayDarkMode")))
            }
            .overlay(Divider(), alignment: .bottom)
            .padding(.bottom)
        }
        .onTapGesture {
            isShowingDetailsPlayer.toggle()
        }
        .fullScreenCover(isPresented: $isShowingDetailsPlayer) {
            MediaPlayerDetailView(track: track ?? AlbumDataModel(author: "Леша Свик",song: "Танцевали до утра",image: "svik", duration: 186.0))
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
            .previewLayout(.fixed(width: 400.0, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
    }
}
