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
    @IBOutlet weak var controlButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var shakeLabel: UILabel!
    @IBOutlet weak var firstRowFactButton: UIButton!
    @IBOutlet weak var secondRowFactButton: UIButton!
    @IBOutlet weak var thirdRowFactButton: UIButton!    
    @IBOutlet weak var fourthRowFactButton: UIButton!
    
    var gameplayArrowButtonsHandler: GameplayArrowButtonsHandler?
    var gameplayControlButtonsHandler: GameplayControlButtonsHandler?
    var gameplayLabelsHandler: GameplayLabelsHandler?
    var countdownTimer: CountdownTimer?
    var gameplay: Gameplay?
    
    override func becomeFirstResponder() -> Bool { //MARK: Overriden to implement shake gesture listener
        return true
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) { //MARK: Overriden to implement shake gesture listener
        if motion == .motionShake {
            gameplay?.shakeGesture()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameplayArrowButtonsHandler = GameplayArrowButtonsHandler(gameplayViewController: self)
        gameplayControlButtonsHandler = GameplayControlButtonsHandler(gameplayViewController: self)
        gameplayLabelsHandler = GameplayLabelsHandler(gameplayViewController: self)
        countdownTimer = CountdownTimer(gameplayViewController: self)
        
        guard let unwrappedGameplayArrowButtonsHandler = gameplayArrowButtonsHandler,
            let unwrappedGameplayControlButtonsHandler = gameplayControlButtonsHandler,
            let unwrappedGameplayLabelsHandler = gameplayLabelsHandler,
            let unwrappedCountdownTimer = countdownTimer else {
                fatalError("Critical Error! One of the Controllers failed to initialize in the body of a GameplayViewController.")
        }
        
        gameplay = Gameplay(gameplayViewController: self,
                            gameplayArrowButtonsHandler: unwrappedGameplayArrowButtonsHandler,
                            gameplayControlButtonsHandler: unwrappedGameplayControlButtonsHandler,
                            gameplayLabelsHandler: unwrappedGameplayLabelsHandler,
                            countdownTimer: unwrappedCountdownTimer)
        
        gameplay?.startNewGame()
        
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //TODO: Come up with the logic for the segue change
    }
    
    func showScore () {
        self.performSegue(withIdentifier: "gameplayToScore", sender: self)
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
