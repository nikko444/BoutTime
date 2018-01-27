//
//  GameplayFactButtonsHandler.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-24.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

class GameplayFactButtonsHandler {
    let firstRowFactButton: UIButton
    let secondRowFactButton: UIButton
    let thirdRowFactButton: UIButton
    let fourthRowFactButton: UIButton
    
    init (firstRowFactButton: UIButton,
          secondRowFactButton: UIButton,
          thirdRowFactButton: UIButton,
          fourthRowFactButton: UIButton) {
        self.firstRowFactButton = firstRowFactButton
        self.secondRowFactButton = secondRowFactButton
        self.thirdRowFactButton = thirdRowFactButton
        self.fourthRowFactButton = fourthRowFactButton
    }
    
    func setFacts (factSlots : [FactModel]) throws {
        
        if (factSlots.count != 4) {
            throw Errors.factSlotsArray("factSlots Array is corrupt - length is not 4!")
        } else {
        
        self.firstRowFactButton.setTitle(factSlots[0].caption, for: .normal)
        
        self.secondRowFactButton.setTitle(factSlots[1].caption, for: .normal)
        
        self.thirdRowFactButton.setTitle(factSlots[2].caption, for: .normal)
        
        self.fourthRowFactButton.setTitle(factSlots[3].caption, for: .normal)
        
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
    
}
