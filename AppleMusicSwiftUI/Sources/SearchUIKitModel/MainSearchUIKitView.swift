//
//  MainSearchUIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 17.09.22.
//

import SwiftUI

struct MainSearchUIKitView: View {
    var body: some View {
        ZStack {
            SearchUIKitView()
            PlayerView()
        }
    }
}

struct MainSearchUIKitView_Previews: PreviewProvider {
    static var previews: some View {
        MainSearchUIKitView()
    }
}
