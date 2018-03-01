//: Playground - noun: a place where people can play

import UIKit
//Swift의 기본 데이터 타입
//Bool, Int, Unit, Float, Double, Character, String

//Bool
var someBool: Bool = true
someBool = false
//someBool = 0 <- true or false만 들어 올수 있음
//someBool = 1

//Int
var someInt: Int = -100 //Int는 -, + 의 값을 가지는 정수 타입만을 가질 수 있음

//UInt --> Unsigned Int (양수)
var someUInt: UInt = 100
//someUInt = -100 --> 양수가 아닌 정수가 들어가서 오류 발생

//Float --> 32비트 부동소수 타입
var someFloat: Float = 3.14
someFloat = 3 //정수를 넣어도 받아 들임.

//Double --> 64비트 부동소수 타입
var someDouble: Double = 3.14
someDouble = 3
//someDouble = someFloat --> 오류 발생

var someCharacter: Character = "😊"
someCharacter = "a"
someCharacter = "아"
//someCharacter = "아아아" --> String 타입으로 오류

//String
var someString: String = "하하하 😊"
someString = someString + "웃으면 복이와요"
//someString = someCharacter --> Character타입으로 오류
print(someString)

