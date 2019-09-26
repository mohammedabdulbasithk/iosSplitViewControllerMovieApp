//
//  Movie.swift
//  MovieSplitVieApp
//
//  Created by Basith on 26/09/19.
//  Copyright © 2019 TechPro. All rights reserved.
//

import Foundation
import UIKit

class Movie {
  let name: String
  let description: String
  let image: UIImage

  init(name: String, description: String, image: UIImage) {
    self.name = name
    self.description = description
    self.image = image
  }
}
