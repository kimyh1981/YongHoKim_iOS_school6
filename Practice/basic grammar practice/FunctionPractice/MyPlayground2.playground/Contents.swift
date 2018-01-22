//: Playground - noun: a place where people can play

import UIKit

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


