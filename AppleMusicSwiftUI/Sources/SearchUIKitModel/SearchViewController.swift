//
//  SearchViewController.swift
//  AppleMusicSwiftUI
//
//  Created by Elena Noack on 15.09.22.
//


import UIKit
import SwiftUI

class SearchViewController: UIHostingController<SearchView>, UICollectionViewDelegate, ObservableObject, UISearchControllerDelegate, UITableViewDelegate {
    // MARK: - Properties
    
    private var searchView:  UIKitView? {
        guard isViewLoaded else { return nil }
        return view as? UIKitView
    }
    
    @State private var categoryData = CategoryModel.mocks
    private var albumData = [AlbumDataModel]()
    
    // MARK: - View Life Cycle
    
    init() {
        super.init(rootView: SearchView())
    }
    
    @objc required dynamic init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = UIKitView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        setupNavigationBar()
        configureSearchController()
    }
    
    // MARK: - Settings
    
    private func setupNavigationBar() {
        navigationItem.searchController = searchView?.searchController
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.hidesSearchBarWhenScrolling = false
//        self.definesPresentationContext = true
//        navigationController?.navigationBar.barTintColor = .clear
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        navigationItem.title = "Поиск"
    }
    
    private func configureView() {
        albumData = AlbumDataModel.mocks
        searchView?.tableView.delegate = self
        searchView?.tableView.dataSource = self
        searchView?.collectionView.delegate = self
        searchView?.collectionView.dataSource = self
    }
    
    private func configureSearchController() {
        searchView?.searchController.searchResultsUpdater = self
        searchView?.searchController.delegate = self
    }
}

// MARK: - UICollectionViewDataSource

extension SearchViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        categoryData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.reuseID, for: indexPath) as? CategoryCell
        else {
            return UICollectionViewCell() }
        
        let category = categoryData[indexPath.row]
        cell.nameLabel.text = category.title
        cell.imageView.image = UIImage(named: "\(category.image)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        viewForSupplementaryElementOfKind kind: String,
                        at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.reuseID, for: indexPath) as? HeaderView else {
            return HeaderView() }
        headerView.frame.size.height = 46
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let viewController = SearchDetailUIKitView()
        navigationController?.pushViewController(viewController, animated: true)
    }
}

// MARK: - UITableViewDataSource

extension SearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        albumData.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        var configuration = cell.defaultContentConfiguration()
        let track = albumData[indexPath.row]
        let thumbnailSize = CGSize(width: 40 * UIScreen.main.scale, height: 40 * UIScreen.main.scale)
        configuration.image = UIImage(named: "\(track.image)")?.preparingThumbnail(of: thumbnailSize)?.rounded(radius: 6)
        configuration.text = track.author
        configuration.secondaryText = track.song
        configuration.secondaryTextProperties.color = .gray
        cell.selectionStyle = .none
        cell.contentConfiguration = configuration
        return cell
    }
}

// MARK: - UISearchResultsUpdating

extension SearchViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
        if searchView?.searchController.isActive == false {
            searchView?.collectionView.isHidden = false
            searchView?.tableView.isHidden = true
        } else {
            searchView?.collectionView.isHidden = true
            searchView?.tableView.isHidden = false
            albumData = AlbumDataModel.mocks
        }
        
        if !searchController.searchBar.text.isEmptyOrNil {
            guard let text = searchController.searchBar.text else { return }
            albumData = AlbumDataModel.mocks.filter { track in
                track.author.lowercased().contains(text.lowercased()) || track.song.lowercased().contains(text.lowercased())
            }
        }
        searchView?.collectionView.reloadData()
        searchView?.tableView.reloadData()
    }
}
