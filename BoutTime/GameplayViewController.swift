//
//  GameplayController.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-14.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

class GameplayViewController: UIViewController {

    @IBOutlet var factRowViews: [UIView]!
    @IBOutlet weak var firstRowFullDownButton: UIButton!
    @IBOutlet weak var secondRowHalfUpButton: UIButton!
    @IBOutlet weak var secondRowHalfDownButton: UIButton!
    @IBOutlet weak var thirdRowHalfUpButton: UIButton!
    @IBOutlet weak var thirdRowHalfDownButton: UIButton!
    @IBOutlet weak var fourthRowFullUpButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var shakeLabel: UILabel!
    @IBOutlet weak var firstRowFactButton: UIButton!
    @IBOutlet weak var secondRowFactButton: UIButton!
    @IBOutlet weak var thirdRowFactButton: UIButton!    
    @IBOutlet weak var fourthRowFactButton: UIButton!
    
    var gameplay: Gameplay?
    
    override func becomeFirstResponder() -> Bool { //MARK: Overriden to implement shake gesture listener
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) { //MARK: Overriden to implement shake gesture listener
        if motion == .motionShake {
            //TODO: Add an actual method call to check the facts sequence
            shakeLabel.text = "Shaken, not stirred" //FIXME: here just for the testing reason - has to be removed down the road
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameplay = Gameplay(firstRowFullDownButton: firstRowFullDownButton,
                            secondRowHalfUpButton: secondRowHalfUpButton,
                            secondRowHalfDownButton: secondRowHalfDownButton,
                            thirdRowHalfUpButton: thirdRowHalfUpButton,
                            thirdRowHalfDownButton: thirdRowHalfDownButton,
                            fourthRowFullUpButton: fourthRowFullUpButton,
                            timerLabel: timerLabel,
                            shakeLabel: shakeLabel,
                            firstRowFactButton: firstRowFactButton,
                            secondRowFactButton: secondRowFactButton,
                            thirdRowFactButton: thirdRowFactButton,
                            fourthRowFactButton: fourthRowFactButton)
    
        
        for factRowView in factRowViews {  //MARK: Applying round corners
            factRowView.layer.cornerRadius = 5;
            factRowView.layer.masksToBounds = true;
        }
        
        firstRowFullDownButton.setTitle(ButtonNames.firstRowFullDown.rawValue, for: .normal)
        secondRowHalfUpButton.setTitle(ButtonNames.secondRowHalfUp.rawValue, for: .normal)
        secondRowHalfDownButton.setTitle(ButtonNames.secondRowHalfDown.rawValue, for: .normal)
        thirdRowHalfUpButton.setTitle(ButtonNames.thirdRowHalfUp.rawValue, for: .normal)
        thirdRowHalfDownButton.setTitle(ButtonNames.thirdRowHalfDown.rawValue, for: .normal)
        fourthRowFullUpButton.setTitle(ButtonNames.fourthRowFullUp.rawValue, for: .normal)
    
        
        gameplay?.setGameScreen()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func arrowButtonPressed(_ sender: UIButton) {
        guard let unwrappedGameplay = gameplay else {
            fatalError("Critical Error! Gameplay class was not initialized in the body of a GameplayViewController.")
        }
        unwrappedGameplay.arrowButtonPressed(sender)
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
