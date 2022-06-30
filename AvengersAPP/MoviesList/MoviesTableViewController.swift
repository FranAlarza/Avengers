//
//  MoviesListViewController.swift
//  AvengersAPP
//
//  Created by Fran Alarza on 29/6/22.
//

import UIKit

class MoviesTableViewController: UITableViewController {

    // MARK: - Table view data source
    
    private var movies = [["movieName": "Captain America: The First Avenger","movieReleaseYear": "2011",                                    "movieImageName": "captainAmerica", "cast": ["Chris Evans","Hugo Weaving", "Samuel L.                           Jackson"]],
                          ["movieName": "Captain Marvel","movieReleaseYear": "2019", "movieImageName": "captainMarvel", "cast": ["Brie Larson","Ben Mendelsohn", "Samuel L. Jackson"]],
                          ["movieName": "Iron man", "movieReleaseYear":"2008", "movieImageName": "iroman", "cast": ["Robert Downey Jr.", "Gwyneth Paltrow","Terrence Howard"]],
                          ["movieName": "The Incredible Hulk", "movieReleaseYear": "2008","movieImageName": "hulk", "cast": ["Edward Norton", "Liv Tayler", "Tim Roth"]],
                          ["movieName": "Iron man 2", "movieReleaseYear": "2010", "movieImageName": "ironman2","cast": ["Robert Downey Jr.", "Gwyneth Paltrow", "Mickey Rourke"]],
                          ["movieName": "Thor","movieReleaseYear": "2011", "movieImageName": "thor", "cast": ["Chris Hemsworth","Anthony Hopkins", "Natalie Portman"]],
                          ["movieName": "The Avengers","movieReleaseYear": "2012", "movieImageName": "avengers", "cast": ["Scarlett Johansson","Chris Hemsworth", "Chris Evans", "Robert Downey Jr."]],
                          ["movieName": "Iron man 3","movieReleaseYear": "2013", "movieImageName": "ironman3", "cast": ["Guy Pearce","Robert Downey Jr.", "Gwyneth Paltrow"]],
                          ["movieName": "Thor: The Dark World","movieReleaseYear": "2013", "movieImageName": "thorDarkWorld", "cast": ["TomHiddleston", "Chris Hemsworth", "Natalie Portman"]],
                          ["movieName": "Captain America: TheWinter Soldier", "movieReleaseYear": "2014", "movieImageName":"captainAmericaWinterSoldier", "cast": ["Chris Evans", "Scarlett Johansson", "Samuel L.Jackson"]],
                          ["movieName": "Guardians of the Galaxy", "movieReleaseYear": "2014","movieImageName": "guardianOfTheGalaxy", "cast": ["Chris Pratt", "Vin Diesel", "BradleyCooper"]],
                          ["movieName": "Guardians of the Galaxy Vol. 2", "movieReleaseYear": "2017","movieImageName": "guardianOfTheGalaxy2", "cast": ["Zoe Saldana", "Dave Bautista","Chris Pratt"]],
                          ["movieName": "Avengers: Age of Ultron", "movieReleaseYear": "2015","movieImageName": "avengersUltron", "cast": ["Robert Downey Jr.", "Chris Evans", "MarkRuffalo"]],
                          ["movieName": "Ant-man", "movieReleaseYear": "2015", "movieImageName":"antman", "cast": ["Paul Rudd", "Michael Douglas", "Corey Stoll"]],
                          ["movieName": "CaptainAmerica: Civil War", "movieReleaseYear": "2016", "movieImageName":"captainAmericaCivilWar", "cast": ["Chris Evans", "Robert Downey Jr.", "ScarlettJohansson"]],
                          ["movieName": "Black Panther", "movieReleaseYear": "2018","movieImageName": "blackPanther", "cast": ["Chadwick Boseman", "Michael B. Jordan","Lupita Nyong'o"]],
                          ["movieName": "Spider-Man: Homecoming", "movieReleaseYear": "2017","movieImageName": "spidermanHomecoming", "cast": ["Tom Holland", "Michael Keaton","Robert Downey Jr."]],
                          ["movieName": "Ant-Man and the Wasp", "movieReleaseYear":"2018", "movieImageName": "antmanWasp", "cast": ["Paul Rudd", "Envageline Lily", "MichaelPeña"]],
                          ["movieName": "Doctor Strange", "movieReleaseYear": "2016", "movieImageName":"doctorStrange", "cast": ["Benedict Cumberbatch", "Chiwetel Ejiofor", "Rachel McAdams"]],
                          ["movieName": "Thor: Ragnarok", "movieReleaseYear": "2017", "movieImageName":"thorRagnarok", "cast": ["Chris Hemsworth", "Tom Hiddleston", "Cate Blanchett"]],
                          ["movieName": "Avengers: Infinity War", "movieReleaseYear": "2018", "movieImageName":"avengersInfinityWar", "cast": ["Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo"]],
                          ["movieName": "Avengers: Endgame", "movieReleaseYear": "2019", "movieImageName":"avengersEndgame", "cast": ["Chris Hemsworth", "Robert Downey Jr.", "Mark Ruffalo"]],
                          ["movieName": "Spider-Man: Far from Home", "movieReleaseYear": "2019","movieImageName": "spidermanWayFromHome", "cast": ["Tom Holland", "Samuel L.Jackson", "Jake Gyllenhaal"]]]

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

        if let movieImage = movies[indexPath.row]["movieImageName"] as? String,
           let movieName = movies[indexPath.row]["movieName"] as? String,
           let movieYear = movies[indexPath.row]["movieReleaseYear"] as? String{
            cell.setDataMovieCell(image: movieImage, title: movieName, year: movieYear)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MovieDetailSegue", sender: indexPath)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? MovieDetailViewController
        guard let indexPath = sender as? IndexPath else { return }
        destinationVC?.movieImage = movies[indexPath.row]["movieImageName"] as? String
        destinationVC?.movieName = movies[indexPath.row]["movieName"] as? String
        destinationVC?.releaseYear = movies[indexPath.row]["movieReleaseYear"] as? String
        destinationVC?.cast = movies[indexPath.row]["cast"] as? [String]
    }
    

}
