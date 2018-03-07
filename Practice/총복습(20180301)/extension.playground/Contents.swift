//: Playground - noun: a place where people can play

import UIKit

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isOdd)
print(2.isEven)
print(99.isEven)


func oddEvenNum(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else if num % 2 == 1 {
        return false
    } else {
        return true
    }
    
}
oddEvenNum(num: 121)

extension Double {
    var km: Double { return self * 1000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1000.0 }
    var ft: Double { return self / 3.28084 }
}

let oneInch = 25.4.mm
print("one inch is \(oneInch) meters." )
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters.")

extension Int {
    func repetitions(task: () -> Void) {
        for _ in 0..<self {
            task()
        }
    }
}












