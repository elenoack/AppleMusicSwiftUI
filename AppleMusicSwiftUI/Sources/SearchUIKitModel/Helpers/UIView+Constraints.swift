//
//  UIView Constraints.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 15.09.22.
//

import UIKit


extension UIView {
    
    func addSubviewsForAutoLayout(_ views: [UIView]) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
    }

}



