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

func checkDoubleNum(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}
print(checkDoubleNum(num: 4))

func changeGrade(grade: Int) -> String {
    if grade <= 100 && grade > 95 {
        return "A"
    } else if grade >= 90 && grade < 95 {
        return "B"
    } else {
        return "C"
    }
}
print(changeGrade(grade: 88))

func matchSomething(num: Int) {
    switch num {
    case 100:
        print("num is 100.")
    default:
        print("num is not 100.")
    }
}
print(matchSomething(num: 101))

func matchNum(num: Int) {
    switch num {
    case 1,2,3,4,5:
        print("num is within 1~5.")
    case 5...10:
        print("num is within 6~10.")
    default:
        print("num is not in 1~10.")
    }
}
print(matchNum(num: 10))

func matchString(character: String) {
    switch character {
    case "kim":
        print("correct")
    default:
        print("not correct")
    }
}
print(matchString(character: "kim"))
//반복문 통해서 알파벳 나타내보기!

func checkRange(num: Int) {
    switch num {
    case 0...9:
        print("일 단위")
    case 10...99:
        print("십 단위")
    case 100...999:
        print("백 단위")
    default:
        print("측정 단위 초과")
    }
}
print(checkRange(num: 9999))

func checkXYposition(position:(Int, Int)) {
    switch position {
    case (0, 0):
        print("located in origin.")
    case (_ , 0):
        print("\(position) is located in x axis.")
    case (0, _):
        print("\(position) is located in y axis.")
    case (-2...2, -2...2):
        print("\(position) is located in 4square box.")
    default:
        print("located in somewhere.")
    }
}
print(checkXYposition(position: (10, 0)))

func bindingValue(value1:(Int, Int)) {
    switch value1 {
    case (let x, 0):
        print("\(x) is on x axis.")
    case (0, let y):
        print("\(y) is on y axis.")
    default:
        print("not")
    }
}
print(bindingValue(value1: (0,6)))

func grade(score: Int) -> String {
    var returnValue: String
    switch score {
    case let x where x < 100 && x >= 90:
        returnValue = "A"
    case let x where x < 90 && x >= 80:
        returnValue = "B"
    case let x where x < 80 && x >= 70:
        returnValue = "C"
    default:
        returnValue = "F"
    }
    return returnValue
}
print(grade(score: 69))

func whileTest() {
    var a: Int = 10
    while a > 0 {
        print(a)
        a -= 1
    }
}
print(whileTest())

func forTest() {
    let list: [Int] = [1,2,3,4]
    for item in list {
        print(item)
    }
}
print(forTest())

func forTest2() {
    for item in 1...100 {
        print(item)
    }
}
print(forTest2())

func forTest3() {
//    var lastIndex: Int = 10
    for i in 0..<10 {
        print(i)
    }
}
print(forTest3())
