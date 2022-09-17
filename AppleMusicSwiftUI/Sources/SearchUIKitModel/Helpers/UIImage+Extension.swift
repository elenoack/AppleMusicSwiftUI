//
//  UIImage+Extension.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 15.09.22.
//

import UIKit

extension UIImage {

    public func rounded(radius: CGFloat) -> UIImage {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        UIBezierPath(roundedRect: rect, cornerRadius: radius).addClip()
        draw(in: rect)
        return UIGraphicsGetImageFromCurrentImageContext()!
    }
    
}
