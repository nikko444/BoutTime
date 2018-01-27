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
    
    init? (caption: String, date: DateComponents) {
        self.caption = caption
        self.date = date
    }
    
}
