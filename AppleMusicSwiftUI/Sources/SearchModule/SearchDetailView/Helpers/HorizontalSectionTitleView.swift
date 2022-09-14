//
//  HorizontalSectionTitleView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 10.09.22.
//

import SwiftUI

struct HorizontalSectionTitleView: View {
    
        @Binding var title: String
        
        var body: some View {
            VStack{
                Divider()
                    .padding([.horizontal])
                HStack {
                    Text(title)
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    Button("См. все") {
                    }
                    .foregroundColor(.red)
                }
                .padding([.horizontal])
            }
        }
    }

struct HorizontalSectionTitleView_Previews: PreviewProvider {
    @State static var title: String = "Популярные треки"
    static var previews: some View {
        HorizontalSectionTitleView(title: $title)
    }
}
