//
//  MoviesListViewController.swift
//  AvengersAPP
//
//  Created by Fran Alarza on 29/6/22.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    // MARK: - Table view data source
    
    var movies = ["Avengers", "Avengers: Age of Ultron", "Avengers: Civil War"]

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MoviesCell else { return
            UITableViewCell()
        }

        cell.setDataMovieCell(image: "", title: movies[indexPath.row], year: "2014")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieNames = movies[indexPath.row]
        performSegue(withIdentifier: "MovieDetailSegue", sender: movieNames)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? MovieDetailViewController
        let movieName = sender as? String
        destinationVC?.movieName = movieName
    }
    

}
