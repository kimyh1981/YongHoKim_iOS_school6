//
//  main.swift
//  StructureChallenge
//
//  Created by KimYong Ho on 05/04/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

//: ### STRUCTURES
//: Write a struct that represents a pizza order. Include toppings, size and any other option you’d want for a pizza.

// TODO: Write solution here
struct Order {
    let size: Int
    let toppings: [String]
    let style: String
}

let order = Order(size: 10, toppings: ["cheeze", "pepper", "meat"], style: "Combination")

//: Change `distance(from:to:)` to use `Location`s as parameters instead of x-y tuples.
struct Location {
    let x: Int
    let y: Int
}

// TODO: Modify this
func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return sqrt(distanceX * distanceX + distanceY * distanceY)
}

//: Change `contains(_:)` to call the new `distance(from:to:)` with `Location`s.

struct DeliveryArea {
    let center: Location
    var radius: Double
    
    func contains(_ location: Location) -> Bool {
        // TODO: Modify this
        let distanceFromCenter =
            distance(from: center,
                     to: location)
        
        return distanceFromCenter < radius
    }
    
    func overlaps(with area: DeliveryArea) -> Bool {
        return distance(from: center, to: area.center) <= (radius + area.radius)
    }
}

//: Add a method `overlaps(with:)` on `DeliveryArea` that can tell you if the area overlaps with another area.

let area1 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
let area2 = DeliveryArea(center: Location(x: 5, y: 9), radius: 2.5)
print(area1.overlaps(with: area2))
// TODO: Test if areas 1 and 2 overlap (should be false)
let area3 = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
let area4 = DeliveryArea(center: Location(x: 3, y: 5), radius: 2.5)
// TODO: Test if areas 3 and 4 overlap (should be true)
print(area3.overlaps(with: area4))











