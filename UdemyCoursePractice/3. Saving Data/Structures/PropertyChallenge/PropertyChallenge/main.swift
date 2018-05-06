//
//  main.swift
//  PropertyChallenge
//
//  Created by KimYong Ho on 07/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

struct Temperature {
    var degreesF: Double {
        didSet {
            if degreesF > 100 {
                print("Too hot!")
            }
        }
    }
    var degreesC: Double {
        get {
        return (degreesF - 32) / 1.8
        }
        set {
            return degreesF = newValue * 1.8 + 32
        }
    }
}

//#1
var temp: Temperature = Temperature(degreesF: 70)
print(temp.degreesC)
print("------------------")

//#2
temp.degreesC = 30
print(temp.degreesF)
print("------------------")

//#3
temp.degreesF = 101

print("------------------")
