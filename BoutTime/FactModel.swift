//
//  FactModel.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-20.
//  Copyright © 2018 nikko444. All rights reserved.
//

import UIKit

struct FactModel {
    let caption : String
    let date : DateComponents
    let calendar = Calendar(identifier: .gregorian)
    
    init? (caption: String, date: DateComponents) {
        self.caption = caption
        self.date = date
    }
    
    func getDate () -> Date {
        guard let date = calendar.date(from: date) else {
            return Date(timeIntervalSince1970: 0)
        }
        return date
    }
}
