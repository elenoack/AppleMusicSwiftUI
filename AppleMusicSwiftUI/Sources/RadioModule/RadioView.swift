//
//  RadioView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 02.09.22.
//

import SwiftUI

struct RadioView: View {
    
    @EnvironmentObject var modelData: ModelData
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: true) {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: rows) {
                        ForEach(modelData.radio) { radio in
                            RadioSectionView(radio: radio)
                        }
                        .frame(width: UIScreen.main.bounds.width - 16)
                        .padding(.horizontal, 8)
                    }
                }
                StationView()
                    .padding(.horizontal, 8)
            }
        }
        .navigationTitle("Радио")
        .navigationViewStyle(.stack)
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
            .environmentObject(ModelData())
    }
}
