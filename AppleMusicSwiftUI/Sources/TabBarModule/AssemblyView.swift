//
//  AssemblyView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

struct AssemblyView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().isTranslucent = false
    }
    var body: some View {
        TabBarView()
            .safeAreaInset(edge: .bottom) {
                PlayerView()
                    .padding(.bottom, 50)
            }
    }
}


struct AssemblyView_Previews: PreviewProvider {
    static var previews: some View {
        AssemblyView()
    }
}
