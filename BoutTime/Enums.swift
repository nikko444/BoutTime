//
//  ButtonNamesEnum.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-18.
//  Copyright © 2018 nikko444. All rights reserved.
//

enum ButtonNames: String {
    case firstRowFullDown = "1"
    case secondRowHalfUp = "2U"
    case secondRowHalfDown = "2D"
    case thirdRowHalfUp = "3U"
    case thirdRowHalfDown = "3D"
    case fourthRowFullUp = "4"
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
