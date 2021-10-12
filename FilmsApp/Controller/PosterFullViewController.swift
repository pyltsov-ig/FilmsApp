//
//  PosterFullViewController.swift
//  FilmsApp
//
//  Created by Igor Pyltsov on 26.09.2021.
//

import UIKit

class PosterFullViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    
    @IBOutlet weak var posterFullViewImage: UIImageView!
    
    var detailIndexPath:Int = Int()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        posterFullViewImage.image = UIImage(named: model.newTestArray[detailIndexPath].testPic ?? "image1")
   
    }
    
    @IBAction func closeAction(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
