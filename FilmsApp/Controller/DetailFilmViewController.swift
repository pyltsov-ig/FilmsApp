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
    
    var receivedIndex: Int = Int()
    private var testArrayIndex = Int()
    
    var transition: RoundingTransition = RoundingTransition()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testArrayIndex = Model().getItemIndex(id: receivedIndex)
        
        posterImageView.image = UIImage(named: testArray[testArrayIndex].testPic ?? "image1")
        filmTitleLabel.text = testArray[testArrayIndex].testTitle
        releaseYearLabel.text = testArray[testArrayIndex].testYear
        ratingLabel.text = testArray[testArrayIndex].testRating
        

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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destVC = segue.destination as? PosterFullViewController else {return}
        
        destVC.detailIndexPath = testArrayIndex
        
        destVC.transitioningDelegate = self
        destVC.modalPresentationStyle = .custom
        
    }
}
