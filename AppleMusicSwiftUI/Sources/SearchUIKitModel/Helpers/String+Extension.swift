//
//  String+Extension.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 15.09.22.
//

import Foundation

extension Optional where Wrapped == String {
    
    var isEmptyOrNil: Bool {
        return self?.isEmpty != false
    }
    
}

