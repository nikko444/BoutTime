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
    
    init(firstRowFullDownButton: UIButton,
         secondRowHalfUpButton: UIButton,
         secondRowHalfDownButton: UIButton,
         thirdRowHalfUpButton: UIButton,
         thirdRowHalfDownButton: UIButton,
         fourthRowFullUpButton: UIButton) {
        self.firstRowFullDownButton = firstRowFullDownButton
        self.secondRowHalfUpButton = secondRowHalfUpButton
        self.secondRowHalfDownButton = secondRowHalfDownButton
        self.thirdRowHalfUpButton = thirdRowHalfUpButton
        self.thirdRowHalfDownButton = thirdRowHalfDownButton
        self.fourthRowFullUpButton = fourthRowFullUpButton
    }

}
