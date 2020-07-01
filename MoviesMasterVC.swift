//
//  MoviesMasterVC.swift
//  Classwork6
//
//  Created by party time on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit
var selectedMovie = Movie(movieName: "nothing", movieReleaseDate: 2000, actors: [], rating: 0.0, pgRating: "PG13")

class MoviesMasterVC: UIViewController {
    //marvelbtns:)
    @IBOutlet weak var marvelbtn0: UIButton!
    @IBOutlet weak var marvelbtn1: UIButton!
    @IBOutlet weak var marvelbtn2: UIButton!
    @IBOutlet weak var marvelbtn3: UIButton!
    @IBOutlet weak var marvelbtn4: UIButton!
    @IBOutlet weak var marvelbtn5: UIButton!
    
    //dc btns :)
    @IBOutlet weak var dcbtn0: UIButton!
    @IBOutlet weak var dcbtn1: UIButton!
    @IBOutlet weak var dcbtn2: UIButton!
    @IBOutlet weak var dcbtn3: UIButton!
    @IBOutlet weak var dcbtn4: UIButton!
    @IBOutlet weak var dcbtn5: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDClImages()
        // Do any additional setup after loading the view.
    }
    //marvel images
    func setMarvelImages() {
        marvelbtn0.setBackgroundImage(UIImage(named: MarvelMovieData[0].movieName), for: .normal)
        marvelbtn1.setBackgroundImage(UIImage(named: MarvelMovieData[1].movieName), for: .normal)
        marvelbtn2.setBackgroundImage(UIImage(named: MarvelMovieData[2].movieName), for: .normal)
        marvelbtn3.setBackgroundImage(UIImage(named: MarvelMovieData[3].movieName), for: .normal)
        marvelbtn4.setBackgroundImage(UIImage(named: MarvelMovieData[4].movieName), for: .normal)
        marvelbtn5.setBackgroundImage(UIImage(named: MarvelMovieData[5].movieName), for: .normal)
        
    }

    //dc images
    func setDClImages() {
       dcbtn0.setBackgroundImage(UIImage(named: DCMovieData[0].movieName), for: .normal)
       dcbtn1.setBackgroundImage(UIImage(named: DCMovieData[1].movieName), for: .normal)
       dcbtn2.setBackgroundImage(UIImage(named: DCMovieData[2].movieName), for: .normal)
       dcbtn3.setBackgroundImage(UIImage(named: DCMovieData[3].movieName), for: .normal)
       dcbtn4.setBackgroundImage(UIImage(named: DCMovieData[4].movieName), for: .normal)
       dcbtn5.setBackgroundImage(UIImage(named: DCMovieData[5].movieName), for: .normal)
        
    }

    
    @IBAction func marvelBtns(_ sender: UIButton) {
        let index = sender.tag
        selectedMovie = MarvelMovieData[index]
        print(selectedMovie)
        performSegue(withIdentifier: "details", sender: nil)
 }
    
    @IBAction func dcBtns(_ sender: UIButton) {
        let index = sender.tag
        selectedMovie = DCMovieData[index]
        print(selectedMovie)
        performSegue(withIdentifier: "details", sender: nil)

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
