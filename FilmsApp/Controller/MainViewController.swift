//
//  ViewController.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 03.09.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var filmSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        
        filmSearchBar.delegate = self
        
        let xibCell = UINib(nibName: "FilmCollectionViewCell", bundle: nil)
        mainCollectionView.register(xibCell, forCellWithReuseIdentifier: "FilmCell")
        mainCollectionView.reloadData()
        
    }
    
}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "FilmCell", for: indexPath) as? FilmCollectionViewCell else { return UICollectionViewCell()}
        
        
        cell.posterPreviewImageView.image = UIImage(named: testArray[indexPath.row].testPic ?? "")
        cell.posterPreviewImageView.layer.cornerRadius = 15
        cell.filmTitleLabel.text = testArray[indexPath.row].testTitle
        cell.releaseTitleLabel.text = testArray[indexPath.row].testYear
        cell.ratingLabel.text = testArray[indexPath.row].testRating
        
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let destViewController = storyboard?.instantiateViewController(withIdentifier: "DetailFilmViewControllerS") as? DetailFilmViewController else {return}
        
        destViewController.receivedIndex = indexPath.row
        navigationController?.pushViewController(destViewController, animated: true)
    }
    
    
}


