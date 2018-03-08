//: Playground - noun: a place where people can play

import UIKit

func factorial(n: Int) -> Int {
    var fac: Int = 1
    for i in 1...n {
        fac *= i
    }
    return fac
}
factorial(n: 5)

var intro:(name: String, age: Int) = ("Kim", 36)
print("name : " + intro.name)
print("age : \(intro.age)")

var mexico:(capital: String, population: Int) = ("CiudatDeMexico", 100000000)
print("Capital: " + mexico.capital)
print("Population: \(mexico.population)")

func fName(agumentName parameterName: Int) -> Int {
    return parameterName + 3
}
fName(agumentName: 5)

func fName1(agumentName parameterName: Int) -> Int {
    return parameterName * 9
}
fName1(agumentName: 9)

var list: String = "No.1 : String Variable"
print(list)

var lastName: String = "Kim"
print(lastName)

list = "No. 2: escape sequence, adding variable value."
print(list + ("\n") + list + list)

list = "Boolean"
var haveACar: Bool = true
print("Do you have a car? \(haveACar)")

var feetSize: Int = 260
print("My size of feet is" + " " + String(feetSize) + ".")

var myLuckyNo: Int = 8
var myTelephoneNo: Int = 01088428764
var myApartmentNo: Int = 308204
print("I like" + " " + String(myLuckyNo) + ", so my telephone number has many of 8." + " " + "My telephone number is" + " " + String(myTelephoneNo) + " And my apartment number has also no. 8 as seen like" + " " + String(myApartmentNo))

var total: Int = 24
var average: Double = 1
average = Double(total)/5
print("24 나누기 5는 \(average).")
print("24 나누기 5는" + " " + String(average) + ".")



func math(ttl: Double, n: Double) -> Double{
    var nn: Double = 0
    nn = ttl/n
    return nn
}
math(ttl: 10, n: 5)


class MathMatics {
    var num: Int = 0
    func checkOddNum() -> Bool {
        if num % 2 == 0 {
            return false
        } else {
            return true
        }
    }
}

var testNum: MathMatics = MathMatics()
testNum.num = 13
testNum.checkOddNum()

var cha: Character = "K"
var cha1: Character = "Y"

var initialOfKim: (Character,Character,String) = (cha,cha1,String("H"))
print(initialOfKim)
print(String(initialOfKim.0) + String(initialOfKim.1) + "H")

func selfIntroduction(name: String, age: Int, address: String) {
    print("My name is \(name) and I am \(age) years old, lastly I live in \(address).")
}
selfIntroduction(name: "Kim", age: 38, address: "Seojong")

func getNumber(firstNum num1: Int) -> Int {
    return num1
}
getNumber(firstNum: 33388888888)

func getNumber() -> Int {
    let num1: Int = 22
    return num1
}
getNumber()

func addNums(first num1: Int, second num2: Int, third num3: Int) -> Double {
    return Double(num1) * Double(num2) / Double(num3)
}

addNums(first: 8, second: 8, third: 3)

func defaulPara(number num1: Int = 10, number num2: Int = 20) -> Int {
    return num1 + num2
}
defaulPara()
defaulPara(number: 29, number: 38)


