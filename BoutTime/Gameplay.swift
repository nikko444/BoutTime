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
    
    var roundsPlayed : Int
    var correctAnswers : Int
    var numberOfRounds : Int = 6
    
    let gameplayViewController : GameplayViewController
    let gameplayArrowButtonsHandler : GameplayArrowButtonsHandler
    let gameplayControlButtonsHandler : GameplayControlButtonsHandler
    let gameplayLabelsHandler : GameplayLabelsHandler
    let countdownTimer: CountdownTimer
    
    var factSlots: [FactModel] = []
    var factBuffer: FactModel?
    
    init(gameplayViewController: GameplayViewController,
         gameplayArrowButtonsHandler: GameplayArrowButtonsHandler,
         gameplayControlButtonsHandler: GameplayControlButtonsHandler,
         gameplayLabelsHandler: GameplayLabelsHandler,
         countdownTimer: CountdownTimer) {
            roundsPlayed = 0
            correctAnswers = 0
        
            self.gameplayViewController = gameplayViewController
            self.gameplayArrowButtonsHandler = gameplayArrowButtonsHandler
            self.gameplayControlButtonsHandler = gameplayControlButtonsHandler
            self.gameplayLabelsHandler = gameplayLabelsHandler
            self.countdownTimer = countdownTimer
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
    
    func setFactButtonsCaptions() {
        do {
            try gameplayControlButtonsHandler.setFacts(factSlots: factSlots)
        } catch Errors.factSlotsArray("factSlots Array is corrupt - length is not 4!") {
            gameplayControlButtonsHandler.showError()
        } catch {
            gameplayControlButtonsHandler.showError()
        }
    }
    
    func startNewGame () {
        for factRowView in gameplayViewController.factRowViews {  //MARK: Applying round corners
            factRowView.layer.cornerRadius = 5;
            factRowView.layer.masksToBounds = true;
        }
        setGameScreen()
        roundsPlayed = 0
        correctAnswers = 0
    }
    
    func setGameScreen () {
        gameplayLabelsHandler.unhideTimerLabel()
        gameplayControlButtonsHandler.hideControlButton()
        gameplayControlButtonsHandler.enableControlButton()
        gameplayLabelsHandler.setShakeLabel(to: .shakeToComplete)
        gameplayArrowButtonsHandler.enableArrowButtons()
        gameplayControlButtonsHandler.disableFactButtons()
        setFactsToSlots()
        setFactButtonsCaptions()
        countdownTimer.startTimer()
        roundsPlayed += 1
    }
    
    
    func setFactBuffer (for fact: FactModel?) {
        guard let unwrappedFact = fact else {
            fatalError("setFactBuffer method Error! factSlots array must be corrupt")
        }
        factBuffer = unwrappedFact
    }
    
    func getFactBuffer () -> FactModel {
        guard let unwrappedFactBuffer = factBuffer else {
            fatalError("getFactBuffer method Error! factSlots array must be corrupt")
        }
        return unwrappedFactBuffer
    }
    
    func moveFact(for state: MoveFactOptions) {
        switch state {
        case .firstAndSecond:
            setFactBuffer(for: factSlots[0])
            factSlots[0] = factSlots[1]
            factSlots[1] = getFactBuffer()
        case .secondAndThird:
            setFactBuffer(for: factSlots[1])
            factSlots[1] = factSlots[2]
            factSlots[2] = getFactBuffer()
        case .thirdAndFourth:
            setFactBuffer(for: factSlots[2])
            factSlots[2] = factSlots[3]
            factSlots[3] = getFactBuffer()
        }
        setFactButtonsCaptions()
    }
    
    func checkOrder () -> Bool {
        if (factSlots[0].getDate() <= factSlots[1].getDate()) &&
           (factSlots[1].getDate() <= factSlots[2].getDate()) &&
           (factSlots[2].getDate() <= factSlots[3].getDate()){
            return true
        } else {
            return false
        }
    }
    
    func arrowButtonPressed(_ sender: UIButton) {
        switch sender.tag {
        case ButtonTags.firstRowFullDown.rawValue: moveFact(for: .firstAndSecond)
        case ButtonTags.secondRowHalfUp.rawValue: moveFact(for: .firstAndSecond)
        case ButtonTags.secondRowHalfDown.rawValue: moveFact(for: .secondAndThird)
        case ButtonTags.thirdRowHalfUp.rawValue: moveFact(for: .secondAndThird)
        case ButtonTags.thirdRowHalfDown.rawValue: moveFact(for: .thirdAndFourth)
        case ButtonTags.fourthRowFullUp.rawValue: moveFact(for: .thirdAndFourth)
        case ButtonTags.controlButton.rawValue:setGameScreen()
        default: fatalError("button with no tag assigned been pressed, most likely someting went wrong in the GameplayArrowButtonsHandler or GameplayControlButtonsHandler class")
        }
    }
    
    func setCheckScreen () {
        if checkOrder() {
            gameplayControlButtonsHandler.setWinButton()
            correctAnswers += 1
        } else {
            gameplayControlButtonsHandler.setLoseButton()
        }
        gameplayLabelsHandler.setShakeLabel(to: .tapEventsToLearnMore)
        gameplayArrowButtonsHandler.disableArrowButtons()
        gameplayControlButtonsHandler.enableFactButtons()
        gameplayLabelsHandler.hideTimerLabel()
        gameplayControlButtonsHandler.unhideControlButton()
        if roundsPlayed == numberOfRounds {
            gameplayControlButtonsHandler.disableControlButton()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                //
            })
        }
    }
    
    func shakeGesture () {
            countdownTimer.endTimer()
        }
    
}
