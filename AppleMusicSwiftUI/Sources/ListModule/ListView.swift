//
//  ListView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

struct ListView: View {
    @State private var mediaLibrary = ListModel.mocks
    @State private var selectedItems : Set<String> = Set<String>()
    
    var body: some View {
        List(selection: $selectedItems) {
            Section() {
                ForEach(mediaLibrary, id:\.self) { media in
                    MediaRowView(media: media)
                        .listRowSeparator(.visible)
                }.onMove(perform: move)
            }
        }
        .environment(\.editMode, .constant(.active))
        .listStyle(.plain)
        .navigationTitle("Медиатека")
        .navigationBarItems(
            trailing: NavigationLink(
                destination:
                    LibraryView(),
                label: {
                    Text("Готово")
                        .foregroundColor(.red)
                }))
        .navigationBarBackButtonHidden(true)
    }

func move(from source: IndexSet, to destination: Int) {
    mediaLibrary.move(fromOffsets: source, toOffset: destination)
   }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
