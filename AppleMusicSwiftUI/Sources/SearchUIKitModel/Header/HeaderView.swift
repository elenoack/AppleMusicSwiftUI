//
//  HeaderView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 15.09.22.
//

import UIKit

class HeaderView: UICollectionReusableView {
    // MARK: - Properties
    
    static let reuseID = "Header"
    
    lazy var lineSeparators: UIView = {
        let line = UIView()
        line.backgroundColor = .systemGray4
        return line
    }()
    
    lazy var label: UILabel = {
        let lable = UILabel()
        lable.textAlignment = .left
        lable.font = .systemFont(ofSize: 22, weight: .bold)
        lable.textColor = .black
        lable.text = "Поиск по категориям"
        return lable
    }()
    
    // MARK: - Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Not implemented")
    }
}

// MARK: - Configuration

extension HeaderView {
    
    func configure() {
        addSubviewsForAutoLayout([lineSeparators,
                                  label])
        
        NSLayoutConstraint.activate([
            lineSeparators.topAnchor.constraint(equalTo: topAnchor),
            lineSeparators.heightAnchor.constraint(equalToConstant: 1),
            lineSeparators.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            lineSeparators.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            label.topAnchor.constraint(equalTo: lineSeparators.bottomAnchor, constant: 6),
            label.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
        ])
    }
}
