//: Playground - noun: a place where people can play

import UIKit


//{ (매개변수 목록) -> 반환타입 in 실행코드}

func sumFunction(a: Int, b: Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 1, b: 3)
print(sumResult)

var sum: (Int, Int) -> Int = { (a: Int, b: Int) in return a + b}
sumResult = sum(3, 3)
print(sumResult)

sum = sumFunction(a:b:)
sumResult = sum(5, 5)
print(sumResult)

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in return a + b}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in return a - b}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in return a / b}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int { return method(a, b)}

var calculated: Int

calculated = calculate(a: 3, b: 9, method: add)
print(calculated)
calculated = calculate(a: 5, b: 5, method: substract)
print(calculated)
calculated = calculate(a: 9, b: 9, method: divide)
print(calculated)
calculated = calculate(a: 5, b: 10, method: { (left: Int, right: Int) -> Int in return left * right})
print(calculated)






let adding: (Int, Int) -> Int
adding = { (a: Int, b: Int) -> Int in return a + b}
let multiplying: (Int, Int) -> Int
multiplying = { (a: Int, b: Int) -> Int in return a * b}

func calculation(a: Int, b: Int, method: (Int, Int) -> Int) -> Int { return method(a, b) }
var result: Int

result = calculation(a: 10, b: 10, method: { (a, b) -> Int in
    return a + b
})
print(result)

result = calculation(a: 15, b: 15, method: { (a, b) in
    return a + b
})
print(result)

result = calculation(a: 30, b: 30, method: { (a, b) in
    a + b
})
print(result)

result = calculation(method: { (60 + 60) in a + b
})
































