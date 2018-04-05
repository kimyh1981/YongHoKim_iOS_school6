//
//  main.swift
//  StructurePractice
//
//  Created by KimYong Ho on 04/04/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

//struct Location {
//    let x: Int
//    let y: Int
//}
//
//struct DeliveryArea {
//    let center: Location
//    var radius: Double
//
//    func contatins(_ location: Location) -> Bool {
//        let distanceToStore = distance(from: location, to: center)
//        return distanceToStore < radius
//    }
//}
//
//let restaurant = DeliveryArea(center: Location(x: 2, y: 4), radius: 2.5)
//let otherRestaurant = DeliveryArea(center: Location(x: 7, y: 8), radius: 1.5)
//let restaurants = [restaurant, otherRestaurant]
//
//func distance(from source: Location, to target: Location) -> Double {
//    let distanceX = Double(source.x - target.x)
//    let distanceY = Double(source.y - target.y)
//    return sqrt(distanceX * distanceY + distanceY + distanceY)
//}
//
//func isInDeliveryRange(location: Location) -> Bool {
//    for restaurant in restaurants {
//        if restaurant.contatins(location) {
//            return true
//        }
//    }
//    return false
//}
//
//isInDeliveryRange(location: Location(x: 3, y: 4))
//isInDeliveryRange(location: Location(x: 5, y: 4))
//isInDeliveryRange(location: Location(x: 8, y: 8))

var a = 5
var b = a
var c = a
print(a, b, c)

a = 10
print(a, b, c)

