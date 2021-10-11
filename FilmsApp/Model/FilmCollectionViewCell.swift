//
//  FilmCollectionViewCell.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 11.09.2021.
//

import UIKit

class FilmCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var posterPreviewImageView: UIImageView!
    
    @IBOutlet weak var releaseTitleLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var filmTitleLabel: UILabel!
    
    var data:Item? {
        didSet {
            guard data != nil else {
                return
            }
    
        posterPreviewImageView.image = UIImage(named: data?.testPic ?? "image1")
        filmTitleLabel.text = data?.testTitle
        releaseTitleLabel.text = String(data?.testYear ?? 0)
        ratingLabel.text = String(data?.testRating ?? 0)
        }
    }
}

