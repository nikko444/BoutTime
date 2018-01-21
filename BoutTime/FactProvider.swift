//
//  FactProvider.swift
//  BoutTime
//
//  Created by nikko444 on 2018-01-20.
//  Copyright © 2018 nikko444. All rights reserved.
//

import GameKit

class FactProvider {
    
    let facts: [FactModel?] = [
        
        FactModel(caption: "First human in outer space",
                  date: DateComponents(year: 1961, month: 4, day: 12)),
        
        FactModel(caption: "First sustained, controlled, powered heavier-than-air manned flight",
                  date: DateComponents(year: 1903, month: 12, day: 17))

    ]
    
    var usedFacts: [Int] = []
    
    func randomFact () -> Int {
        if facts.count == usedFacts.count {
            usedFacts = []
        }
        var indexOfSelectedFact: Int
        var reGenerate: Bool
        repeat {
            reGenerate = false
            indexOfSelectedFact = GKRandomSource.sharedRandom().nextInt(upperBound: facts.count)
            for check in usedFacts {
                if check == indexOfSelectedFact {
                    reGenerate = true
                }
            }
        } while reGenerate
        usedFacts.append(indexOfSelectedFact)
        return indexOfSelectedFact
    }
    
    func provide () -> FactModel? {
        guard let unwrappedFact = facts[randomFact()] else {
            return nil
        }
        return unwrappedFact
    }
    
}

