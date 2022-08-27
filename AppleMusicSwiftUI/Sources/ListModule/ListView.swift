//
//  ListView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 27.08.22.
//

import SwiftUI

struct ListView: View {
    var body: some View {
       Text("cxcx")
            .navigationBarItems(
                trailing: NavigationLink(
                    destination:
                            ListView(),
                    label: {
                        Text("Готово")
                            .foregroundColor(.red)
                    }))
            .navigationBarBackButtonHidden(true)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
