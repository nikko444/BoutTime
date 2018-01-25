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
}
