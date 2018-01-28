//
//  Practice2.swift
//  ComputedProperty
//
//  Created by KimYong Ho on 2018. 1. 26..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}
let stepCounter = StepCounter()
StepCounter.totalSteps = 200

StepCounter.totalSteps = 360

StepCounter.totalSteps = 360

