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
    
    var factProvider = FactProvider()
    var countdownTimer: CountdownTimer?
    
    var roundsPlayed : Int
    
    let gameplayArrowButtonsHandler : GameplayArrowButtonsHandler
    let gameplayFactButtonsHandler : GameplayFactButtonsHandler
    let gameplayLabelsHandler : GameplayLabelsHandler
    
    var factSlots: [FactModel] = []
    
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
        
        countdownTimer = CountdownTimer(timerLabel: gameplayLabelsHandler.getTimerLabel())
        
        roundsPlayed = 0
        
    }
    
    func setFactsToSlots () {
        
        factSlots = []
        
        for _ in 0...3 {
            do {
                try factSlots.append(factProvider.provide())
            } catch Errors.couldNotRetriveFact {
                fatalError("Could not Retrive a Fact - body of the FactProvider class")
            } catch let error {
                fatalError("\(error)")
            }
        }
    }
    
    func setGameScreen () {
        setFactsToSlots()
        
        do {
            try gameplayFactButtonsHandler.setFacts(factSlots: factSlots)
        } catch Errors.factSlotsArray("factSlots Array is corrupt - length is not 4!") {
            gameplayFactButtonsHandler.showError()
        } catch {
            gameplayFactButtonsHandler.showError()
        }
        
        countdownTimer?.startTimer()
        roundsPlayed += 1
    }
    
    
    
}
