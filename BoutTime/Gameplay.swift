//
//  Gameplay.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-24.
//  Copyright © 2018 nikko444. All rights reserved.
//


import UIKit
import GameKit

class Gameplay {
    
    
    
    
    let gameplayArrowButtonsHandler : GameplayArrowButtonsHandler
    let gameplayFactButtonsHandler : GameplayFactButtonsHandler
    let gameplayLabelsHandler : GameplayLabelsHandler
    
    init(firstRowFullDownButton: UIButton,
         secondRowHalfUpButton: UIButton,
         secondRowHalfDownButton: UIButton,
         thirdRowHalfUpButton: UIButton,
         thirdRowHalfDownButton: UIButton,
         fourthRowFullUpButton: UIButton,
         timerLabel: UILabel,
         shakeLabel: UILabel,
         firstRowFactButton: UIButton,
         secondRowFactButton: UIButton,
         thirdRowFactButton: UIButton,
         fourthRowFactButton: UIButton) {
        
        gameplayArrowButtonsHandler = GameplayArrowButtonsHandler(firstRowFullDownButton: firstRowFullDownButton,
                                                                  secondRowHalfUpButton: secondRowHalfUpButton,
                                                                  secondRowHalfDownButton: secondRowHalfDownButton,
                                                                  thirdRowHalfUpButton: thirdRowHalfUpButton,
                                                                  thirdRowHalfDownButton: thirdRowHalfDownButton,
                                                                  fourthRowFullUpButton: fourthRowFullUpButton)
        
        gameplayFactButtonsHandler = GameplayFactButtonsHandler(firstRowFactButton: firstRowFactButton,
                                                                secondRowFactButton: secondRowFactButton,
                                                                thirdRowFactButton: thirdRowFactButton,
                                                                fourthRowFactButton: fourthRowFactButton)
        
        gameplayLabelsHandler = GameplayLabelsHandler(timerLabel: timerLabel,
                                                      shakeLabel: shakeLabel)
        
    }
    
    
    //TODO: FIRST PLACE WRITE AN INITIALIZER HERE!!!!!
}
