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
                date: DateComponents(year: 1926, month: 12, day: 7)),
        
        FactModel(caption: "First transatlantic non-stop solo flight", //MARK: 12. First transatlantic non-stop solo flight
                date: DateComponents(year: 1927, month: 5, day: 20)),
        
        FactModel(caption: "World famous airship \"Graf Zeppelin\" first time flew", //MARK: 13. Zeppelin
                date: DateComponents(year: 1928, month: 9, day: 18)),
        
        FactModel(caption: "First radio controlled airport tower", //MARK: 14. First radio controlled airport tower
                date: DateComponents(year: 1930, month: 12, day: 31)),
        
        FactModel(caption: "First solo flight around the world", //MARK: 15. First solo flight around the world
                date: DateComponents(year: 1933, month: 7, day: 15)),
        
        FactModel(caption: "McDonnell Douglas DC-3 - one of the most successful aircrafts in history first flew", //MARK: 16. Douglas DC-3
                date: DateComponents(year: 1935, month: 12, day: 17)),
        
        FactModel(caption: "First flight by a fully pressurized airplane, the Lockheed XC-35", //MARK: 17. A fully pressurized airplane
                date: DateComponents(year: 1937, month: 5, day: 7)),
        
        FactModel(caption: "New York Municipal Airport opens. \'La Guardia\' nowdays", //MARK: 18. La Guardia
                date: DateComponents(year: 1939, month: 12, day: 2)),
        
        FactModel(caption: "Battle of Britain - first major military campaign fought entirely by air forces", //MARK: 19. Battle of Britain
                date: DateComponents(year: 1940, month: 7, day: 10)),
        
        FactModel(caption: "First man-made object to travel into space by crossing the Kármán line", //MARK: 20. First man-made object to travel into space
                date: DateComponents(year: 1944, month: 6, day: 20)),
        
        FactModel(caption: "World's first commercial jetliner", //MARK: 21. First commercial jetliner
                date: DateComponents(year: 1949, month: 7, day: 27)),
        
        FactModel(caption: "First intercontinental ballistic missile (ICBM)", //MARK: 22. First ICMB
                date: DateComponents(year: 1957, month: 8, day: 21)),
        
        FactModel(caption: "First animal in orbit, the dog Laika", //MARK: 23. First animal in orbit
                date: DateComponents(year: 1957, month: 11, day: 3)),
        
        FactModel(caption: "World's first long-distance commercial jetliner", //MARK: 24. First commercial long-range jetliner
                date: DateComponents(year: 1957, month: 12, day: 20)),
        
        FactModel(caption: "First reaching Earth escape velocity or Trans Lunar Injection", //MARK: 25. First reaching Earth escape velocity
                date: DateComponents(year: 1959, month: 1, day: 2)),
        
        FactModel(caption: "First artificial satellite to reach the Moon vicinity", //MARK: 26. First artificial satellite to reach the Moon vicinity
                date: DateComponents(year: 1959, month: 1, day: 4)),
        
        FactModel(caption: "First photograph of Earth from orbit", //MARK: 27. First photograph of Earth from orbit
                date: DateComponents(year: 1959, month: 8, day: 7)),
        
        FactModel(caption: "First impact into another world (the Moon)", //MARK: 28. First impact into another world (the Moon)
                date: DateComponents(year: 1959, month: 9, day: 13)),
        
        FactModel(caption: "First photos of another world from space: The far side of the Moon", //MARK: 29. First photos of another world from space
                date: DateComponents(year: 1959, month: 10, day: 4)),
        
        FactModel(caption: "First solar probe", //MARK: 30. First solar probe
                date: DateComponents(year: 1960, month: 3, day: 1)),
        
        FactModel(caption: "First plants and animals to return alive from Earth orbit", //MARK: 31. First plants and animals to return alive from Earth orbit
                date: DateComponents(year: 1960, month: 8, day: 19)),
        
        FactModel(caption: "First orbital solar observatory", //MARK: 32. First orbital solar observatory
                date: DateComponents(year: 1962, month: 3, day: 7)),
        
        FactModel(caption: "First spacecraft to impact the far side of the Moon", //MARK: 33. First spacecraft to impact the far side of the Moon
                date: DateComponents(year: 1962, month: 4, day: 26)),
        
        FactModel(caption: "First woman in space", //MARK: 34. First woman in space
                date: DateComponents(year: 1963, month: 7, day: 16)),
        
        FactModel(caption: "First extra-vehicular activity", //MARK: 35. First extra-vehicular activity
                date: DateComponents(year: 1965, month: 3, day: 18)),
        
        FactModel(caption: "First close-up photographs of another planet: Mars", //MARK: 36. First close-up photographs of another planet: Mars
                date: DateComponents(year: 1965, month: 7, day: 14)),
        
        FactModel(caption: "First soft landing on another world (the Moon)", //MARK: 37. First soft landing on another world
                date: DateComponents(year: 1966, month: 2, day: 3)),
        
        FactModel(caption: "First impact into another planet (Venus)", //MARK: 38. First impact into another planet (Venus)
                date: DateComponents(year: 1966, month: 3, day: 1)),
        
        FactModel(caption: "First piloted orbital mission of another celestial body (Moon)", //MARK: 39. First piloted orbital mission of the Moon
                date: DateComponents(year: 1968, month: 12, day: 21)),
        
        FactModel(caption: "First human on the Moon, and first space launch from a celestial body other than the Earth", //MARK: 40. First human on the Moon, and first space launch from a celestial body other than the Earth
                date: DateComponents(year: 1969, month: 7, day: 20))

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

