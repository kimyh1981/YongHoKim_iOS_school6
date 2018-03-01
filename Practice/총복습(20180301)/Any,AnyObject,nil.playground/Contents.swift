//: Playground - noun: a place where people can play

import UIKit

/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
*/

//Mark: - Any
var someAny: Any = 200
someAny = "any of type is acceptable."
someAny = 123.12
someAny = 100
someAny = "a"
someAny = -100
someAny = 1.1234567890

let someDouble: Double = someAny as! Double

//Mark: - AnyObject
class SomeClass {}
class SomeClass2 {}
var someAnyObject: AnyObject = SomeClass()
someAnyObject = 123.12 as AnyObject

var someAnyObject1: AnyObject = SomeClass2()
someAnyObject1 = 123.12 as AnyObject

//Mark: - nil
//someAny = nil
//someAnyObject1 = nil

