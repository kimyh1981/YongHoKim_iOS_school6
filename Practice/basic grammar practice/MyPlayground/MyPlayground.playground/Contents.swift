//: Playground - noun: a place where people can play

import UIKit
//함수를 만들기 위해 필요한것?
//키워드 + 함수명(Name) + 입력값(Input Value) + {} + 결과타입(Return Type)
//func vName(_ parameter: Any) -> Any {함수 내용}
//var name:Type = value(변수는 value를 넣는 그릇이며, 함수를 수행할 객체임.)
var name:String = "kim"
var number:Int = 1
number = 3
let PI = 3.14
var address:String?
address = "세종시 고운동"
var name0:String = "kim"
var name1:String = "kim"
var name2:String = "Kim"
var age:Int = 38
var age1:Int = 38
var age2:Int = 38
//변수타입
//정수 : Int : 1,2,3,4... : var intName:Int
//실수 : Double : 1.1, 3.14, 5.5 : var doubleName:Double
//문자열 : String : "This is fucking awsome swift." : var stringName:String
//불리언 : Boolean : True or false : var boolName:Bool : !true = false, and = &&, or = ||
//참조형 : ClassName : 클래스 객체를 다른곳에서 사용할 경우 : let customView:UIView, let timer:timer

let greeting = "Guten, Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(after: greeting.startIndex)]
greeting[greeting.index(before: greeting.endIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]

for index in greeting.indices{
print("\(greeting[index]) ", terminator: "")
}
let greeting1 = "Hello, world"
let index1 = greeting1.index(of: ",") ?? greeting1.endIndex
let beginning = greeting1[..<index]

let sampleText = "<<<Hello>>>"
let startIndex = sampleText.index(sampleText.startIndex, offsetBy: 3)
let endIndex = sampleText.index(sampleText.endIndex, offsetBy: -4)

let substring1: Substring = sampleText[startIndex...endIndex]
//let resultStr:String = String(substring1) // “Hello”
print(substring1)

var sampleTuple: (Int, String, Int) = (3,"Kim", 4)
print(sampleTuple.0)
print(sampleTuple.1)
print(sampleTuple.2)

func calculator(num1:Int, num2:Int) -> (Int, String)
{
    let sum:Int = num1 + num2
    
    return (sum, String(sum))
}

let result: (intSum: Int, StringSum: String) = calculator(num1: 10, num2: 3)
let intResult: Int = result.intSum
let stringResult: String = result.StringSum

let num3: Int = 3
let num4: String = "3"
let sum = Int(num3 + (Int(num4))!)

//In-out Parameter Keyword
func swapTwoInts(_ a: inout Int, _ b: inout Int, _ c: inout Int) {
    let temporaryA = a
    a = b
    b = c
    c = temporaryA
    print(temporaryA, a, b, c)
}
var someInt = 1
var anotherInt = 2
var oneAnotherInt = 3
print(swapTwoInts(&someInt, &anotherInt, &oneAnotherInt))


////여러가지 함수 - 예제 써보기

func pass(num:Int) -> Int {
    return num
}
pass(num: 3)

func getPI() -> Double {
    let pi: Double = 3.141592
    return pi
}
getPI()

func sum(firstNum num1:Int, secondNum num2:Int) -> Int {
    return num1 + num2
}
sum(firstNum: 1, secondNum: 2)

func sum(num1:Int, num2:Int = 5) -> Int {
    return num1 + num2
}
sum(num1: 3, num2: 6)

func passNum(_ num:Int) -> Int {
    return num
}
pass(num: 10)

func swapTwoInts(lInt a: inout Int, rInt b: inout Int) {
    let temporaryA: Int = a
    a = b
    b = temporaryA
}
var lInt = 1
var rInt = 2
swapTwoInts(lInt: &lInt, rInt: &rInt)

func calculation(num1:Int, num2:Int) -> (Int, Int) {
    let plus = num1 + num2
    let minus = num1 - num2
    
    return (plus, minus)
}
print(calculation(num1: 1, num2: 1))

func printName() -> String{
    return "my name is YH"
}

func printName(){
    print("my name is YH")
}


func printName(name:String = "YH"){
    print("my name is \(name)")
}

func printName(explain str: inout String) -> String{
    str += "Kim"
    return str
}






































