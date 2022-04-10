//
//  MovieDetailViewController.swift
//  Flixxx
//
//  Created by pineapple on 3/5/22.
//

import UIKit
import AlamofireImage

class MovieDetailViewController: UIViewController {

    
    var movie: [String: Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + "w185" + posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + "w780" + backdropPath)
        backdropView.af_setImage(withURL: backdropUrl!)

        // Do any additional setup after loading the view.
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("loading...")
    }

}
