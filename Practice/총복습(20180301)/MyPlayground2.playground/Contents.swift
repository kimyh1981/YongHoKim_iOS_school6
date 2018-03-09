//: Playground - noun: a place where people can play

import UIKit

func printNumOneByOne(num: Int) {
    for i in 1...num {
        print(i)
    }
}
printNumOneByOne(num: 3)

func multipleNum(level: Int) {
    var step: Int = 1
    while step <= 9 {
        print("\(level) * \(step) = \(level * step)")
        step += 1
    }
}
multipleNum(level: 7)

func printNumReversely(num: Int) {
    var inputNum: Int = num
    for index in 1...num {
        print(inputNum)
        inputNum -= 1
    }
}
printNumReversely(num: 7)

func printStar(n: Int) {
    for i in 1...n {
        print("*" * i)
    }
}
