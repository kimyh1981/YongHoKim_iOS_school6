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
    static var firstDayOfMonth = 1
    
    mutating func advance() {
        day += 1
    }
    
    func monthsUntilWinterBreak() -> Int {
        return months.index(of: "Dec")! - months.index(of: month)!
    }
}

extension SimpleDate {
    init() {
        month = "Jan"
        day = 1
    }
}

struct Math {
    static func factorial(of number: Int) -> Int {
        return (1...number).reduce(1) { result, number in
            return result * number
        }
    }
}
print(Math.factorial(of: 5))

extension Math {
    static func length(x: Double, y: Double) -> Double {
        return sqrt(x * x + y * y)
    }
}
Math.length(x: 3, y: 4)

var testDate = SimpleDate(month: "Feb", day: 22)
print(testDate.monthsUntilWinterBreak()) //겨울 방학까지 남은 달 수
testDate.advance()
print(testDate)


var otherDate = SimpleDate()
