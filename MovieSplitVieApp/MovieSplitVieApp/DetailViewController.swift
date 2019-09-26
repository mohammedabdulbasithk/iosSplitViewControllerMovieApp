//
//  DetailViewController.swift
//  MovieSplitVieApp
//
//  Created by Basith on 26/09/19.
//  Copyright © 2019 TechPro. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var descLabel: UITextView!
    @IBOutlet weak var imageToshow: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var moviee: Movie? {
      didSet {
        refreshUI()
      }
    }
    private func refreshUI() {
      loadViewIfNeeded()
      nameLabel.text = moviee?.name
      descLabel.text = moviee?.description
      imageToshow.image = moviee?.image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
extension DetailViewController: MovieSelectionDelegate {
    func movieSelected(_ newMovie: Movie) {
        moviee = newMovie
    }
}
