//
//  GameplayButtonsHandler.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-24.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

class GameplayArrowButtonsHandler {
    
    let firstRowFullDownButton: UIButton
    let secondRowHalfUpButton: UIButton
    let secondRowHalfDownButton: UIButton
    let thirdRowHalfUpButton: UIButton
    let thirdRowHalfDownButton: UIButton
    let fourthRowFullUpButton: UIButton
    
    init(gameplayViewController : GameplayViewController) {
        self.firstRowFullDownButton = gameplayViewController.firstRowFullDownButton
        self.secondRowHalfUpButton = gameplayViewController.secondRowHalfUpButton
        self.secondRowHalfDownButton = gameplayViewController.secondRowHalfDownButton
        self.thirdRowHalfUpButton = gameplayViewController.thirdRowHalfUpButton
        self.thirdRowHalfDownButton = gameplayViewController.thirdRowHalfDownButton
        self.fourthRowFullUpButton = gameplayViewController.fourthRowFullUpButton
    }
    
    func disableArrowButtons () {
        firstRowFullDownButton.isEnabled = false
        secondRowHalfUpButton.isEnabled = false
        secondRowHalfUpButton.isEnabled = false
        secondRowHalfDownButton.isEnabled = false
        thirdRowHalfUpButton.isEnabled = false
        thirdRowHalfDownButton.isEnabled = false
        fourthRowFullUpButton.isEnabled = false
    }
    
    func enableArrowButtons () {
        firstRowFullDownButton.isEnabled = true
        secondRowHalfUpButton.isEnabled = true
        secondRowHalfUpButton.isEnabled = true
        secondRowHalfDownButton.isEnabled = true
        thirdRowHalfUpButton.isEnabled = true
        thirdRowHalfDownButton.isEnabled = true
        fourthRowFullUpButton.isEnabled = true
    }

}
