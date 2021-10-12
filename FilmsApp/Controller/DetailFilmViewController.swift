//
//  DetailFilmViewController.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 03.09.2021.
//

import UIKit

class DetailFilmViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var filmTitleLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var galleryCollection: UILabel!
    @IBOutlet weak var favButton: UIButton!
    
    var receivedIndex: Int = Int()
    private var testArrayIndex = Int()
    
    //let model = Model()
    
    var transition: RoundingTransition = RoundingTransition()
    let favImage = UIImage(systemName: "heart.fill")
    let unfavImage = UIImage(systemName: "heart")

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let index = model.newTestArray.firstIndex(where: { Item in
            Item.id == receivedIndex
        }) {
            testArrayIndex = index
            posterImageView.image = UIImage(named: model.newTestArray[testArrayIndex].testPic ?? "image1")
            filmTitleLabel.text = model.newTestArray[testArrayIndex].testTitle
            releaseYearLabel.text = String(model.newTestArray[testArrayIndex].testYear ?? 0)
            ratingLabel.text = String(model.newTestArray[testArrayIndex].testRating ?? 0)
            
            let fav = model.newTestArray[testArrayIndex].isLiked
            if fav {
                favButton.setImage(favImage, for: UIControl.State.normal)
                favButton.tintColor = .red
            } else {
                favButton.setImage(unfavImage, for: UIControl.State.normal)
                favButton.tintColor = .blue
            }
        }
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        transition.transitionProfile = .show
        transition.start = posterImageView.center
        transition.roundColor  = UIColor.lightGray
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        transition.transitionProfile = .cancel
        transition.start = posterImageView.center
        transition.roundColor  = UIColor.lightGray
        
        return transition

    
    }
    
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
    }
    
    @IBAction func favButtonPressed(_ sender: UIButton) {
        
        let fav = model.newTestArray[testArrayIndex].isLiked
        model.newTestArray[testArrayIndex].isLiked = !fav
        
        if fav {
            favButton.setImage(unfavImage, for: UIControl.State.normal)
            favButton.tintColor = .blue
        } else {
            favButton.setImage(favImage, for: UIControl.State.normal)
            favButton.tintColor = .red
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destVC = segue.destination as? PosterFullViewController else {return}
        
            destVC.detailIndexPath = testArrayIndex
            destVC.transitioningDelegate = self
            destVC.modalPresentationStyle = .custom
    }
}
