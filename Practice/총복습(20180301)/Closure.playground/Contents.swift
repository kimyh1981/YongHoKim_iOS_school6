//: Playground - noun: a place where people can play

import UIKit

//코드의 블럭
//일급 시민
//변수, 상수 등으로 저장, 전달인자로 전달이 가능
//함수: 이름이 있는 클로저


//함수를 사용한다면
func sumFunction(a: Int, b: Int) -> Int { return a + b }
var sumResult: Int = sumFunction(a: 1, b: 2)
//sumFunction(a: 3, b: 3) <- 왜 굳이?
print(sumResult)

//클로저의 사용
var sum: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in return a + b }
sumResult = sum(1, 2)
print(sumResult)

//함수는 클로저의 일종이므로
//sum 변수에는 당연히 함수도 할당 할 수 있다.
sum = sumFunction(a:b:)
sumResult = sum(1, 2)
print(sumResult)

//Mark: - 함수의 전달인자로서의 클로저

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) -> Int in return a + b }

let substract: (Int, Int) -> Int
substract = { (a:Int, b: Int) -> Int in return a - b }

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) -> Int in return a / b }

let muliply: (Int, Int) -> Int
muliply = { (a: Int, b: Int) -> Int in return a * b}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int
calculated = calculate(a: 10, b: 10, method: add)
calculated = calculate(a: 10, b: 5, method: substract)
calculated = calculate(a: 10, b: 5, method: divide)
calculated = calculate(a: 1234567890, b: 12345, method: muliply)
calculated = calculate(a: 15, b: 5, method: { (left: Int, right: Int) -> Int in return left * right })

// --> 클로저 고급 이어서 하기









