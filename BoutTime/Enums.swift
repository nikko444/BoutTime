//
//  ButtonNamesEnum.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-18.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

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

enum RoundOutcome : String {
    case nextWon = "next_round_success"
    case nextLose = "next_round_fail"
    case scoreWon = "check_score_success"
    case scoreLose = "check_score_fail"
}
