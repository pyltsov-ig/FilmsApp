//
//  ViewController.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 03.09.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var sortBtn: UIBarButtonItem!
    
    var searchController = UISearchController()
    
   // var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        
        searchController.searchBar.delegate = self
        searchController.searchBar.placeholder = "Find Your Film"
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        
        let xibCell = UINib(nibName: "FilmCollectionViewCell", bundle: nil)
        mainCollectionView.register(xibCell, forCellWithReuseIdentifier: "FilmCell")
        
        model.ratingSort()
        mainCollectionView.reloadData()
        
    }
    
    @IBAction func sortBtnPressed(_ sender: UIBarButtonItem) {
        
        let arrowUp = UIImage(systemName: "arrow.up")
        let arrowDn = UIImage(systemName: "arrow.down")
        model.sortAscending = !model.sortAscending
        sortBtn.image = model.sortAscending ? arrowUp : arrowDn
        model.ratingSort()
        mainCollectionView.reloadData()
        
    }
}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return model.newTestArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "FilmCell", for: indexPath) as? FilmCollectionViewCell else { return UICollectionViewCell()}
        
        cell.data = model.newTestArray[indexPath.row]

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let destVC = storyboard?.instantiateViewController(withIdentifier: "DetailFilmViewControllerS") as? DetailFilmViewController else {return}
        
        
        destVC.receivedIndex = model.newTestArray[indexPath.row].id ?? 0
        navigationController?.pushViewController(destVC, animated: true)
    }
        
}

extension MainViewController:  UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        model.search(searchTextValue: searchText)
        mainCollectionView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        model.newTestArray = model.testArray
        mainCollectionView.reloadData()
    }
    
}

