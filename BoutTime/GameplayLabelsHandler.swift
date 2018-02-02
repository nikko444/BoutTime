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
    
    init(timerLabel: UILabel,
         shakeLabel: UILabel) {
        self.timerLabel = timerLabel
        self.shakeLabel = shakeLabel
    }
    
    func setShakeLabel(to captions: ShakeLabel) {
        switch captions {
        case .shakeToComplete: shakeLabel.text = ShakeLabel.shakeToComplete.rawValue
        case .tapEventsToLearnMore: shakeLabel.text = ShakeLabel.tapEventsToLearnMore.rawValue
        }
    }
    
    func setCorrectPic () {
        timerLabel.backgroundColor = UIColor(patternImage: UIImage(named: "next_round_success")!)
    }
    
    func setWrongPic () {
        timerLabel.backgroundColor = UIColor(patternImage: UIImage(named: "next_round_fail")!)
    }
    
}
