//
//  StationSectionView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 02.09.22.
//

import SwiftUI

struct StationSectionView: View {
    var station: RadioModel
    var body: some View {
        HStack() {
            Image(station.stationImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.clear)
                Text(station.stationDescription)
                    .foregroundColor(.primary)
                Text("Станция Apple Music")
                    .foregroundColor(.secondary)
                    .font(.caption)
                Rectangle()
                    .foregroundColor(.clear)
                Divider()
            }
            .frame(height: 100)
            Spacer()
        }
    }
}

struct StationSectionView_Previews: PreviewProvider {
    static var previews: some View {
        StationSectionView(station: RadioModel.mocks[0])
    }
}
