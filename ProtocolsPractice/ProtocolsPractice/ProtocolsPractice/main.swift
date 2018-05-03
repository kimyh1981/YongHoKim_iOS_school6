//
//  main.swift
//  ProtocolsPractice
//
//  Created by KimYong Ho on 02/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return sqrt(distanceX * distanceX + distanceY * distanceY)
}

struct Location {
    let x: Int
    let y: Int
}

struct DeliveryArea: CustomStringConvertible {
    var description: String {
        return """
        Area with center: x: \(center.x), y: \(center.y)
        radius \(radius)
        """
    }
    
    let center: Location
    let radius: Double
    
    func contains(_ location: Location) -> Bool {
        let distanceToStore = distance(from: location, to: center)
        return distanceToStore < radius
    }
}

let restaurant = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
print(DeliveryArea(center: Location(x: 100, y: 200), radius: 100))
let otherRestaurant = DeliveryArea(center: Location(x: 7, y: 8), radius: 1.5)
let restaurants = [restaurant, otherRestaurant]
for restaurant in restaurants {
    print(restaurant)
}

func isInDeliveryRange(location: Location) -> Bool {
    for restaurant in restaurants {
        if restaurant.contains(location) {
            return true
        }
    }
    return false
}









