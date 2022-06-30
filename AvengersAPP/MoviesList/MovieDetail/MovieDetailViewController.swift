//
//  MovieDetailViewController.swift
//  AvengersAPP
//
//  Created by Fran Alarza on 29/6/22.
//

import UIKit

class MovieDetailViewController: UIViewController {

    var movieName: String?
    @IBOutlet weak var movieNameTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        movieNameTitle.text = movieName
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
