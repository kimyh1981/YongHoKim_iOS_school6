//
//  main.swift
//  ComputedPropertyVSMethods
//
//  Created by KimYong Ho on 10/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
struct SimpleDate {
    var month: String
    var day: Int
    
    init() {
        month = "Jan"
        day = 1
    }
    init(month: String, day: Int) {
        self.month = month
        self.day = day
    }
    mutating func advance() {
        day += 1
    }
    
    func monthsUntilWinterBreak() -> Int {
        return month.index(of: "Dec")! - month.index(of: month)!
    }
}

let testDate = SimpleDate(month: "Feb")
testDate.monthsUntilWinterBreak()
testDate.advance()
