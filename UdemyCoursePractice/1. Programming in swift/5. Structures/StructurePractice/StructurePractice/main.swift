//
//  main.swift
//  StructurePractice
//
//  Created by KimYong Ho on 04/04/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

struct Location {
    let x: Int
    let y: Int
}

let restaurantLocation = Location(x: 2, y: 4)
let restaurantRange = 1.5

func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return sqrt(distanceX * distanceY + distanceY + distanceY)
}
print(distance(from: (4, 5), to: (10, 15)))

func isInDeliveryRange(location: (x: Int, y: Int)) -> Bool {
    let deliveryDistance = distance(from: location, to: restaurantLocation)
    return deliveryDistance < restaurantRange
}

print(isInDeliveryRange(location: (3, 4)))
print(isInDeliveryRange(location: (5, 6)))

