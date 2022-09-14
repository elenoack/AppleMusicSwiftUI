//
//  CategorySearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 09.09.22.
//

import SwiftUI

struct CategorySearchView: View {
    
    let category: CategoryModel
    @EnvironmentObject var modelData: ModelData
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Divider()
            Text("Поиск по категориям")
                .font(.title2)
                .bold()
            LazyVGrid(columns: columns) {
                ForEach(modelData.category) { category in
                    NavigationLink {
                        CategorySearchDetailView()
                    } label: {
                        ZStack(alignment: .bottomLeading) {
                            Image(category.image)
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                            Text(category.title)
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal)
                                .padding(.vertical, 10)
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 90)
    }
}

struct CategorySearchView_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchView(category: CategoryModel.mocks[0])
            .environmentObject(ModelData())
    }
}
