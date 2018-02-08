//
//  GameplayLabelsHandler.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-24.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

class GameplayLabelsHandler {
    
    var timerLabel: UILabel
    let shakeLabel: UILabel
    
    init(gameplayViewController : GameplayViewController) {
        self.timerLabel = gameplayViewController.timerLabel
        self.shakeLabel = gameplayViewController.shakeLabel
    }
    
    func setGameScreen () {
        unhideTimerLabel()
        setShakeLabel(to: .shakeToComplete)
    }
    
    func setCheckScreen () {
        setShakeLabel(to: .tapEventsToLearnMore)
        hideTimerLabel()
    }
    
    func setShakeLabel(to captions: ShakeLabel) {
        switch captions {
        case .shakeToComplete: shakeLabel.text = ShakeLabel.shakeToComplete.rawValue
        case .tapEventsToLearnMore: shakeLabel.text = ShakeLabel.tapEventsToLearnMore.rawValue
        }
    }
    
    func hideTimerLabel () {
        timerLabel.isHidden = true
    }
    
    func unhideTimerLabel () {
        timerLabel.isHidden = false
    }
    
}
