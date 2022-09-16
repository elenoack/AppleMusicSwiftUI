//
//  SearchUIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 15.09.22.
//


import SwiftUI
import UIKit

struct SearchUIKitView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let navigationController = UINavigationController(rootViewController: SearchViewController())
        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
}
