//
//  BottomButtonsView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 12.09.22.
//

import SwiftUI

struct BottomButtonsView: View {
    var body: some View {
        HStack {
          Spacer()
            HStack(spacing: 60) {
                Button(action: {}) {
                    Image(systemName: "quote.bubble")
                        .tint(Color ("grayBackground"))
                        .font(.title2)
                }
                Button(action: {}) {
                    Image(systemName: "airplayaudio")
                        .tint(Color ("grayBackground"))
                        .font(.title2)
                }
                Button(action: {}) {
                    Image(systemName: "list.bullet")
                        .tint(Color ("grayBackground"))
                        .font(.title2)
                }
            }
            Spacer()
        }
    }
}

struct BottomButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        BottomButtonsView()
    }
}
