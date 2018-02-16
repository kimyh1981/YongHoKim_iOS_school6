//: Playground - noun: a place where people can play

import UIKit
//변수 복습
var name: String
var age = 38
var height: Double = 170.0
var isDeveloper:Bool = true

name = "Kim"
print("My is \(name).")
height = 180
print("Mr \(name) is \(height) tall and he is \(age) years old.")

var num1: Int = 100
var num2 = num1
var sum = num1 + num2

var person:(name: String, age: Int, height: Double) = ("Kim", 28, 175)
person = ("Lee", 30, 176)
person = ("Park", 18, 170)
print(person)

var intNum = 5
var doubleNum = 4.5
var sum1 = intNum + Int(doubleNum)
var sum2 = Double(intNum) + doubleNum

var fullname: String = "Kim Yong Ho"
var introductionOfFullName = "My name is" + " " + fullname + "."
print(introductionOfFullName)


//함수 복습
func add(firstNum num1: Double, secondNum num2: Int) -> Double {
    return num1 + Double(num2)
}
print(add(firstNum: 15.5, secondNum: 5))

func add() {
    let num3: Int = 110
    let num4: Double = 110.5
    print(Double(num3) + num4)
}
add()

func multipleNums(num5: Int, num6: Double) -> Double {
    return Double(num5) * num6
}
print(multipleNums(num5: 10, num6: 155.55))

//조건문
func chooseTrueOrFalse() {
    var gender: String = "Male"
    if gender != "Male" {
        print("Kim is a male.")
    } else {
        print("Kim is a female.")
    }
}
chooseTrueOrFalse()

func guessNum() {
    let number1 = 5
    let number2 = 10
    let number3 = 15
    if number1 > 10 {
        print("number1 is not bigger than 10.")
    } else if number2 < 5 {
        print("number2 is bigger than 5.")
    } else {
        print("number3 is the biggest number in this game.")
    }
}
print(guessNum())

func ifTest() {
    let kim:Bool = false
    if kim == false {
        print("Kim is Lee.")
    }
}
print(ifTest())

func conditionTest() {
    let id: String = "theband"
    let pw: Int = 1234
    if id == "theband" && pw == 1233 {
        print("Login completed.")
    } else if id == "thebands" || pw == 1233 {
        print("Check your password or id.")
    } else {
        print("Not signed up ever.")
    }
}
print(conditionTest())




















