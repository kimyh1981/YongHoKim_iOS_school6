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
