//: Playground - noun: a place where people can play

import Foundation

//#1

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

var tempA: Temperature = Temperature(degreesF: 75)
tempA.degreesC

//#2
tempA.degreesC = 10

//#3
tempA.degreesF = 101

