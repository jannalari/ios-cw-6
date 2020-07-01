//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by party time on 7/2/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieRatingLabel: UILabel!
    @IBOutlet weak var movieRatingView: UILabel!
    @IBOutlet weak var movieRatedLabel: UILabel!
    @IBOutlet weak var movieRatedview: UILabel!
    @IBOutlet weak var releasedDateLabel: UILabel!
    @IBOutlet weak var releaseDataView: UILabel!
    @IBOutlet weak var actorImageView1: UIImageView!
    @IBOutlet weak var actorLabel1: UILabel!
    @IBOutlet weak var actorImageView2: UIImageView!
    @IBOutlet weak var actorLabel2: UILabel!
    @IBOutlet weak var actorImageView3: UIImageView!
    @IBOutlet weak var actorLabel3: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
      
    }
    
    func setMovieDetails(){
        movieImageView.image = UIImage(named: selectedMovie.movieName)
        //label
        movieRatingLabel.text = "\(selectedMovie.rating)"
        movieRatedLabel.text = selectedMovie.pgRating
        releasedDateLabel.text = "\(selectedMovie.movieReleaseDate)"
        //actors
        actorImageView1.image = UIImage(named: selectedMovie.actors[0])
        actorImageView2.image = UIImage(named: selectedMovie.actors[1])
        actorImageView3.image = UIImage(named: selectedMovie.actors[2])
        
        actorLabel1.text = selectedMovie.actors[0]
         actorLabel2.text = selectedMovie.actors[1]
         actorLabel3.text = selectedMovie.actors[2]
    }
    func configureUI(){
        movieRatedview.layer.cornerRadius = 12
         movieRatingView.layer.cornerRadius = 12
         releaseDataView.layer.cornerRadius = 12
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
