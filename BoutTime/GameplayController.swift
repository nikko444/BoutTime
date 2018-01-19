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
    @IBOutlet weak var firstRowFullDownButton: UIButton!
    @IBOutlet weak var secondRowHalfUpButton: UIButton!
    @IBOutlet weak var secondRowHalfDownButton: UIButton!
    @IBOutlet weak var thirdRowHalfUpButton: UIButton!
    @IBOutlet weak var thirdRowHalfDownButton: UIButton!
    @IBOutlet weak var fourthRowFullUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for factRowView in factRowViews {
            factRowView.layer.cornerRadius = 5;
            factRowView.layer.masksToBounds = true;
        }
        
        firstRowFullDownButton.setTitle(ButtonNames.firstRowFullDown.rawValue, for: .normal)
        secondRowHalfUpButton.setTitle(ButtonNames.secondRowHalfUp.rawValue, for: .normal)
        secondRowHalfDownButton.setTitle(ButtonNames.secondRowHalfDown.rawValue, for: .normal)
        thirdRowHalfUpButton.setTitle(ButtonNames.thirdRowHalfUp.rawValue, for: .normal)
        thirdRowHalfDownButton.setTitle(ButtonNames.thirdRowHalfDown.rawValue, for: .normal)
        fourthRowFullUpButton.setTitle(ButtonNames.fourthRowFullUp.rawValue, for: .normal)
        
        
        firstRowFullDownButton.setImage(UIImage(named : "down_full_selected"), for: .selected)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) throws {
        guard let title = sender.title(for: .normal) else {
            throw Errors.buttonPressed("Inside the GameplayController Class")
        }
        switch title {
        case ButtonNames.firstRowFullDown.rawValue: {}
        case ButtonNames.secondRowHalfUp.rawValue: {}
        case ButtonNames.secondRowHalfDown.rawValue: {}
        case ButtonNames.thirdRowHalfUp.rawValue: {}
        case ButtonNames.thirdRowHalfDown.rawValue: {}
        case ButtonNames.fourthRowFullUp.rawValue: {}
        default: throw Errors.buttonPressed("Inside the GameplayController Class")
        }
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