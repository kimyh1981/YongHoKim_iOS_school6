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
    init() {
        month = "Jan"
    }
    init(month: String) {
        self.month = month
    }
    func monthsUntilWinterBreak() -> Int {
        return month.index(of: "Dec")! - month.index(of: month)
    }
}

let testDate = SimpleDate(month: "Feb")
testDate.monthsUntilWinterBreak()
