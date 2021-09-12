//
//  ViewController.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 03.09.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    var testArray:[TestModel] = [

        TestModel(testPic: "image1", testTitle: "Служебный роман", testYear: "1977", testRating: "4.7"),
        TestModel(testPic: "image2", testTitle: "Mr.Right", testYear: "2015", testRating: "4.9"),
        TestModel(testPic: "image3", testTitle: "Фильм 3", testYear: "2011", testRating: "5.8"),
        TestModel(testPic: "image4", testTitle: "Фильм 4", testYear: "2017", testRating: "3.2"),
        TestModel(testPic: "image5", testTitle: "Фильм 5", testYear: "2000", testRating: "4.3"),
        TestModel(testPic: "image6", testTitle: "Фильм 6", testYear: "2010", testRating: "2.7"),
        TestModel(testPic: "image7", testTitle: "Фильм 7", testYear: "1956", testRating: "7.9"),
        TestModel(testPic: "image8", testTitle: "Фильм 8", testYear: "2001", testRating: "6.7"),
        TestModel(testPic: "image9", testTitle: "Фильм 9", testYear: "2006", testRating: "3.7"),
        TestModel(testPic: "image10", testTitle: "Фильм 10", testYear: "2007", testRating: "7.7"),
        TestModel(testPic: "image11", testTitle: "Фильм 11", testYear: "2018", testRating: "9.7"),
        TestModel(testPic: "image12", testTitle: "Фильм 12", testYear: "2013", testRating: "7.1"),
        TestModel(testPic: "image13", testTitle: "Фильм 13", testYear: "2002", testRating: "8.4"),
        TestModel(testPic: "image14", testTitle: "Фильм 14", testYear: "2014", testRating: "1.2"),
        TestModel(testPic: "image15", testTitle: "Фильм 15", testYear: "2015", testRating: "4.8"),

    ]
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var filmSearchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
        
        filmSearchBar.delegate = self
        
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
    
    
}


