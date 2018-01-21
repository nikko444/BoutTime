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
        
        FactModel(caption: "First human in outer space", //MARK: 1. First human in outer space
                date: DateComponents(year: 1961, month: 4, day: 12)),
        
        FactModel(caption: "First sustained, controlled, powered heavier-than-air manned flight", //MARK: 2. First flight
                date: DateComponents(year: 1903, month: 12, day: 17)),
        
        FactModel(caption: "Sound barrier officially broken in aircraft", //MARK: 3. Sound barrier broken
                date: DateComponents(year: 1947, month: 10, day: 14)),
        
        FactModel(caption: "First manned hot air baloon flight", //MARK: 4. First hot air baloon flight
                date: DateComponents(year: 1783, month: 9, day: 19)),
        
        FactModel(caption: "First practical helicopter flight", //MARK: 5. First helicopter flight
                date: DateComponents(year: 1939, month: 9, day: 14)),
        
        FactModel(caption: "The first artificial Earth satellite launched", //MARK: 6. First artificial Earth satellite
                date: DateComponents(year: 1957, month: 10, day: 4)),
        
        FactModel(caption: "First jet fighter flight", //MARK: 7. First jet fighter flight
                date: DateComponents(year: 1942, month: 7, day: 18)),
        
        FactModel(caption: "First parachute descent from high altitude", //MARK: 8. First parachute descent
                date: DateComponents(year: 1797, month: 10, day: 22)),
        
        FactModel(caption: "First U.S. woman to earn a pilot certificate", //MARK: 9. First U.S. woman pilot
                date: DateComponents(year: 1911, month: 8, day: 11)),
        
        FactModel(caption: "First fine for reckless aerial driving", //MARK: 10. First fine for reckless piloting
                date: DateComponents(year: 1920, month: 4, day: 7)),
        
        FactModel(caption: "First air navigation beacon", //MARK: 11. First navigation beacon
                date: DateComponents(year: 1926, month: 12, day: 26))

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

