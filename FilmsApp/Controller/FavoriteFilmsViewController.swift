//
//  FavoriteFilmsViewController.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 03.09.2021.
//

import UIKit

class FavoriteFilmsViewController: UIViewController {
    
    
    @IBOutlet weak var favoriteCollectionView: UICollectionView!
    
    //var model = Model()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        favoriteCollectionView.delegate = self
        favoriteCollectionView.dataSource = self
        
        let xibCell = UINib(nibName: "FavCollectionViewCell", bundle: nil)
        favoriteCollectionView.register(xibCell, forCellWithReuseIdentifier: "FavCell")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        favoriteCollectionView.reloadData()
        
    }
}

extension FavoriteFilmsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        model.likedArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = favoriteCollectionView.dequeueReusableCell(withReuseIdentifier: "FavCell", for: indexPath) as? FavCollectionViewCell else {return UICollectionViewCell()}
        
        
        cell.data = model.likedArray[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let destVC = storyboard?.instantiateViewController(withIdentifier: "DetailFilmViewControllerS") as? DetailFilmViewController else {return}
        
        destVC.receivedIndex = model.likedArray[indexPath.row].id ?? 0
        navigationController?.pushViewController(destVC, animated: true)
        
    }
    
    
}
