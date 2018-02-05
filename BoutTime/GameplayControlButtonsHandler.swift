//
//  GameplayFactButtonsHandler.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-24.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

class GameplayControlButtonsHandler {
    let firstRowFactButton: UIButton
    let secondRowFactButton: UIButton
    let thirdRowFactButton: UIButton
    let fourthRowFactButton: UIButton
    let controlButton: UIButton
    
    init(gameplayViewController : GameplayViewController) {
        self.firstRowFactButton = gameplayViewController.firstRowFactButton
        self.secondRowFactButton = gameplayViewController.secondRowFactButton
        self.thirdRowFactButton = gameplayViewController.thirdRowFactButton
        self.fourthRowFactButton = gameplayViewController.fourthRowFactButton
        self.controlButton = gameplayViewController.controlButton
        
        self.controlButton.tag = ButtonTags.controlButton.rawValue
    }
    
    func setFacts (factSlots : [FactModel]) throws {
        
        if (factSlots.count != 4) {
            throw Errors.factSlotsArray("factSlots Array is corrupt - length is not 4!")
        } else {
        
        self.firstRowFactButton.setTitle(factSlots[0].caption, for: .normal)
        self.firstRowFactButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.firstRowFactButton.titleLabel?.textAlignment = .center
            
            
        self.secondRowFactButton.setTitle(factSlots[1].caption, for: .normal)
        self.secondRowFactButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.secondRowFactButton.titleLabel?.textAlignment = .center
            
        self.thirdRowFactButton.setTitle(factSlots[2].caption, for: .normal)
        self.thirdRowFactButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.thirdRowFactButton.titleLabel?.textAlignment = .center
            
        self.fourthRowFactButton.setTitle(factSlots[3].caption, for: .normal)
        self.fourthRowFactButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.fourthRowFactButton.titleLabel?.textAlignment = .center
        }
    }
    
    func showError () {
        self.firstRowFactButton.setTitle("We are so sorry!", for: .normal)
        self.firstRowFactButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.firstRowFactButton.titleLabel?.textAlignment = .left
        
        self.secondRowFactButton.setTitle("Unfortunately", for: .normal)
        self.secondRowFactButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.secondRowFactButton.titleLabel?.textAlignment = .left
        
        self.thirdRowFactButton.setTitle("Your app", for: .normal)
        self.thirdRowFactButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.thirdRowFactButton.titleLabel?.textAlignment = .left
        
        self.fourthRowFactButton.setTitle("Just crashed!", for: .normal)
        self.fourthRowFactButton.titleLabel?.lineBreakMode = .byWordWrapping
        self.fourthRowFactButton.titleLabel?.textAlignment = .left
    }
    
    func disableFactButtons () {
        firstRowFactButton.isEnabled = false
        secondRowFactButton.isEnabled = false
        thirdRowFactButton.isEnabled = false
        fourthRowFactButton.isEnabled = false
    }
    
    func enableFactButtons () {
        firstRowFactButton.isEnabled = true
        secondRowFactButton.isEnabled = true
        thirdRowFactButton.isEnabled = true
        fourthRowFactButton.isEnabled = true
    }
    
    func hideControlButton () {
        controlButton.isHidden = true
    }
    
    func unhideControlButton () {
        controlButton.isHidden = false
    }
    
    func setWinButton () {
        controlButton.setImage(UIImage(named: "next_round_success"), for: .normal)
    }
    
    func setLoseButton () {
        controlButton.setImage(UIImage(named: "next_round_fail"), for: .normal)
    }
    
    func disableControlButton () {
        controlButton.isEnabled = false
    }
    
    func enableControlButton () {
        controlButton.isEnabled = true
    }
    
}
