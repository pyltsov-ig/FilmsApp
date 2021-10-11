//
//  FavoriteFilmsViewController.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 03.09.2021.
//

import UIKit

class FavoriteFilmsViewController: UIViewController {
    
    
    @IBOutlet weak var favoriteCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        favoriteCollectionView.delegate = self
        favoriteCollectionView.dataSource = self
        
        let xibCell = UINib(nibName: "FavCollectionViewCell", bundle: nil)
        favoriteCollectionView.register(xibCell, forCellWithReuseIdentifier: "FavCell")
        favoriteCollectionView.reloadData()
        

        
    }
}

extension FavoriteFilmsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        Model().showLikedItems().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = favoriteCollectionView.dequeueReusableCell(withReuseIdentifier: "FavCell", for: indexPath) as? FavCollectionViewCell else {return UICollectionViewCell()}
        
        cell.posterPreviewImageView.image = UIImage(named: Model().showLikedItems()[indexPath.row].testPic ?? "image2")
        cell.posterPreviewImageView.layer.cornerRadius  = 15
        cell.filmTitleLabel.text = Model().showLikedItems()[indexPath.row].testTitle
        cell.releaseTitleLabel.text = String(Model().showLikedItems()[indexPath.row].testYear ?? 0)
        cell.ratingLabel.text = String(Model().showLikedItems()[indexPath.row].testRating ?? 0)
        
        return cell
    }
    
    
}
