//
//  SearchDetailUIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 15.09.22.
//

import SwiftUI

final class SearchDetailUIKitView:
    UIHostingController<CategorySearchDetailView> {
    
    init() {
        super.init(rootView: CategorySearchDetailView())
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")
    }
}
