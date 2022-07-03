//
//  MovieDetailViewController.swift
//  AvengersAPP
//
//  Created by Fran Alarza on 29/6/22.
//

import UIKit

class MovieDetailViewController: UIViewController {

   
    @IBOutlet weak var movieImageLabel: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    @IBOutlet weak var castLabel: UILabel!
    
    var movieImage: String?
    var movieName: String?
    var releaseYear: String?
    var cast: [String]?
    override func viewDidLoad() {
        super.viewDidLoad()
        movieImageLabel.image = UIImage(named: movieImage ?? "placeholder")
        movieNameLabel.text = movieName
        releaseYearLabel.text = releaseYear
        castLabel.text = cast?.joined(separator: ", ")
        
        // Do any additional setup after loading the view.
    }
    
}
