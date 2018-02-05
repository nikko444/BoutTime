//
//  ButtonNamesEnum.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-18.
//  Copyright © 2018 nikko444. All rights reserved.
//

enum ButtonTags : Int {
    case firstRowFullDown = 1
    case secondRowHalfUp = 2
    case secondRowHalfDown = 3
    case thirdRowHalfUp = 4
    case thirdRowHalfDown = 5
    case fourthRowFullUp = 6
    case controlButton = 7
}

enum MoveFactOptions {
    case firstAndSecond
    case secondAndThird
    case thirdAndFourth
}

enum ShakeLabel: String {
     case shakeToComplete = "Shake to complete"
     case tapEventsToLearnMore = "Tap facts to learn more"
}
