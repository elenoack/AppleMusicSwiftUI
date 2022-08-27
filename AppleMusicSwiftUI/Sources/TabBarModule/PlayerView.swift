//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        HStack(spacing: 16) {
            HStack {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(hue: 0.833, saturation: 0.0, brightness: 0.879))
                        .frame(width: 60, height: 60)
                        .cornerRadius(9)
                        .shadow(radius: 6)
                        .padding()
                    Image(systemName: "music.note")
                        .foregroundColor(Color.white)
                }
                .padding(8)
                Text("Не исполняется")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "play.fill").font(.title3)
                }.buttonStyle(PlainButtonStyle())
                Button(action: {}) {
                    Image(systemName: "forward.fill").font(.title3)
                }.buttonStyle(PlainButtonStyle())
                    .padding()
            }
            .background(.bar)
        }
    }
}



struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
