//
//  DetailFilmViewController.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 03.09.2021.
//

import UIKit

class DetailFilmViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var filmTitleLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var galleryCollection: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
    }
    
}
