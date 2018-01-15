//: Playground - noun: a place where people can play

import UIKit

let sampleText = "<<<Helloabc>>>"
let startIndex = sampleText.index(sampleText.startIndex, offsetBy: 3)
let endIndex = sampleText.index(sampleText.endIndex, offsetBy: -7)
print(endIndex.encodedOffset)

let substring1: Substring = sampleText[startIndex...endIndex]
let resultStr:String = String(substring1) // “Hello”
print(resultStr)

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

let num: String = "3"
let str = Int(num)
let num2 = 5
//let sum = str + num2



//순서 넓이 & 둘레길이
//1-1. Square 함수 만들기
func squareArea(length: Int) -> Int
{
    return length * length
}
var result1 = squareArea(length: 3)
print(result1)

func squarPermimeter(length: Int) -> Int
{
    return 4 * length
}

//1-2. Square 함수 만들기(Tuple)
func squareInfo(length: Int, width: Int) -> (squareArea: Int, squarePerimeter: Int)
{
    return((length * width), (4 * length))
}
var squareAreaPerimeter = squareInfo(length: 10, width: 10)
print("squareArea is \(squareAreaPerimeter.squareArea)", "squarePerimter is \(squareAreaPerimeter.squarePerimeter)")



//2-1. Rectangle 함수 만들기
func rectangleArea(width: Int, length: Int) -> Int
{
    return width * length
}
var result2 = rectangleArea(width: 3, length: 4)
print(result2)

func rectanglePerimeter(width: Int, length: Int) -> Int
{
    return ((2 * width) + (2 * length))
}
var result3 = rectanglePerimeter(width: 3, length: 4)
print(result3)




//2-2.



//Circle
func circleArea(redius: Int, pie: Double) -> Double
{
    return (Double(redius) * Double(redius)) * pie
}

var result5 = circleArea(redius: 2, pie: 3.24)
print(result3)

//Tribngle





////여러가지 함수 - 예제 써보기

func pass(num:Int) -> Int {
    return num
}

func getPI() -> Double {
    let pi: Double = 3.141592
    return pi
}

func sum(firstNum num1:Int, secondNum num2:Int) -> Int {
    return num1 + num2
}

func sum(num1:Int, num2:Int = 5) -> Int {
    return num1 + num2
}

func passNum(_ num:Int) -> Int {
    return num
}

func swapTwoInts(lInt a: inout Int, rInt b: inout Int) {
    let temporaryA: Int = a
    a = b
    b = temporaryA
}

func calculator(num1:Int, num2:Int) -> (Int, Int) {
    
    let plus = num1 + num2
    let minus = num1 - num2
    
    return (plus, minus)
}

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






































