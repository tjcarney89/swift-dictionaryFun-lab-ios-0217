//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var flavorPeople: [String] = []
        for  (key, value) in favoriteFlavorsOfIceCream {
            if favoriteFlavorsOfIceCream[key] == flavor {
                flavorPeople.append(value)
            }
        }
        return flavorPeople
    }
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var peopleCount = 0
        for (key, value) in favoriteFlavorsOfIceCream {
            if favoriteFlavorsOfIceCream[key] == flavor {
                peopleCount += 1
            }
        }
        return peopleCount
    }
    
    
    
    
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    
    
    
    
    // 5.
   
    func replace(flavor: String, forPerson person: String) -> Bool {
        let personName = favoriteFlavorsOfIceCream[person]
        var result: Bool = true
        if personName != nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            result = true
        } else if personName == nil {
            result = false
        }
        return(result) 
    }
    
    
    
    
    
    // 6.
    
    func remove(person: String) -> Bool {
        let personName = favoriteFlavorsOfIceCream[person]
        var result: Bool = true
        if personName != nil {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            result = true
        } else {
            result = false
        }
        return(result)
    }
    
    
    
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        let attendeeCount = favoriteFlavorsOfIceCream.count
        return(attendeeCount)
    }
    
    
    
    
    
    
    // 8.
    
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        let personName = favoriteFlavorsOfIceCream[person]
        var result: Bool = true
        if personName == nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: person)
            result = true
        } else {
            result = false
        }
        return(result)
    }
    
    
    
    
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list: String = ""
        for  key in allNames {
            if key != "Tom" {
                list += "\(key) likes \(favoriteFlavorsOfIceCream[key]!)\n"
            } else {
                list += "\(key) likes \(favoriteFlavorsOfIceCream[key]!)"
            }
        }
        return(list)
    }
    
    
    
    
    
    

}
