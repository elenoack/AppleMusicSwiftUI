//
//  UIKitView.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 15.09.22.
//

import UIKit

class UIKitView: UIView {
    // MARK: - Properties
    
    weak var viewController: SearchViewController?
    
    // MARK: - Views
    
    lazy var searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = Strings.placeholder
        searchController.searchBar.autocapitalizationType = .none
        return searchController
    }()
    
    let layout: UICollectionViewCompositionalLayout = {
        let layout = UICollectionViewCompositionalLayout { (section: Int, environment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(Metric.cellWidth),
                heightDimension: .fractionalHeight(Metric.cellHeight))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: Metric.indent,
                                                         leading: Metric.smallIndent,
                                                         bottom: Metric.indent,
                                                         trailing: Metric.smallIndent)
            
            let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(Metric.cellHeight),
                heightDimension: .fractionalWidth(Metric.cellWidth))
            let group = NSCollectionLayoutGroup.horizontal(
                layoutSize: groupSize,
                subitems: [item])
            
            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(
                top: .zero,
                leading: Metric.sideIndent,
                bottom: .zero,
                trailing: Metric.sideIndent)
            
            let headerSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .absolute(42))
            let header = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: headerSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .top)
            header.zIndex = Int.max
            section.boundarySupplementaryItems = [header]
            
            return section
        }
        return layout
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: (layout))
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: CategoryCell.reuseID)
        collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.reuseID)
        return collectionView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView.init(frame: CGRect.zero, style: .insetGrouped)
        tableView.backgroundColor = .clear
        tableView.isHidden = true
        return tableView
    }()
    
    
    // MARK: - Initialization
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        addSubviewsForAutoLayout([collectionView,
                                  tableView])
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
}

// MARK: - Constants

extension UIKitView {
    
    enum Metric {
        static let smallIndent: CGFloat = 4
        static let indent: CGFloat = 4
        static let sideIndent: CGFloat = 12
        static let cellWidth: CGFloat = 1/2
        static let cellHeight: CGFloat = 1
    }
    
    enum Strings {
        static let placeholder: String = "Артисты, песни, тексты и т.д."
    }
}

