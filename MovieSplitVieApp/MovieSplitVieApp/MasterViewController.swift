//
//  MasterViewController.swift
//  MovieSplitVieApp
//
//  Created by Basith on 26/09/19.
//  Copyright © 2019 TechPro. All rights reserved.
//

import UIKit
protocol MovieSelectionDelegate: class {
  func movieSelected(_ newMovie: Movie)
}

class MasterViewController: UITableViewController {
    
    weak var delegate: MovieSelectionDelegate?
    
    let movies = [
      Movie(name: "The Shawshank Redemption", description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", image: UIImage(named: "1")!),
      Movie(name: "The Godfather", description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", image: UIImage(named: "2")!),
      Movie(name: "The Dark Knight", description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", image:UIImage(named: "3")! ),
      Movie(name: "The Godfather: Part II", description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", image: UIImage(named: "4")! ),
      Movie(name: "The Lord of the Rings: The Return of the King", description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.", image: UIImage(named: "5")!)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let moviez = movies[indexPath.row]
      cell.textLabel?.text = moviez.name
      return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      let selectedMovie = movies[indexPath.row]
      delegate?.movieSelected(selectedMovie)
        if let detailViewController = delegate as? DetailViewController {
          splitViewController?.showDetailViewController(detailViewController, sender: nil)
        }
    }

}
