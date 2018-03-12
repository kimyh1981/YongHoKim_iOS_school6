//: Playground - noun: a place where people can play

import UIKit

let immutableArray = Array(1...40)

func multiplyByIndex<T: Numeric>(index: T, number: T) -> T {
    return index * number
}

func isEven(number: Int) -> Bool {
    return number & 1 == 0
}

func addingAllNumbers<T: BinaryInteger> (sum: T, number: T) -> T {
    return sum + number
}

immutableArray.enumerated()
    .map(multiplyByIndex(index: number:))
    .filter(isEven(number:))
    .reduce(0, addingAllNumbers(sum: number:))
