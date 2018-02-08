//
//  ScoreViewController.swift
//  BoutTime
//
//  Created by nikko444 on 2018-02-07.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    var scoreString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = scoreString
        playAgainButton.layer.cornerRadius = 16
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "scoreToGameplay", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
