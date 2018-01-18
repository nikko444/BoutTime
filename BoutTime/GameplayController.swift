//
//  GameplayController.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-14.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

class GameplayController: UIViewController {

    @IBOutlet var factRowViews: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for factRowView in factRowViews {
            factRowView.layer.cornerRadius = 5;
            factRowView.layer.masksToBounds = true;
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
