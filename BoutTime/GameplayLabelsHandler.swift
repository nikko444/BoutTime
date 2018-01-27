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
    
    func getTimerLabel () -> UILabel {
        return timerLabel
    }
    
}
