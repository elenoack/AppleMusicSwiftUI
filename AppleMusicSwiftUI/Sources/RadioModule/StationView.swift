//
//  StationView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 02.09.22.
//

import SwiftUI

struct StationView: View {
    
    @EnvironmentObject var modelData: ModelData
    let columns = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            Text("Станции по жанрам")
                .font(.title2)
                .fontWeight(.bold)
            LazyVGrid(columns: columns) {
                ForEach(modelData.radio) { station in
                    StationSectionView(station: station)
                        .padding(.bottom, 2)
                }
            }
            Rectangle()
                .frame(height: 100)
                .foregroundColor(.clear)
        }
    }
}

struct StationView_Previews: PreviewProvider {
    static var previews: some View {
        StationView()
            .environmentObject(ModelData())
    }
}
