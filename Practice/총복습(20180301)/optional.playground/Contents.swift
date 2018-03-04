//: Playground - noun: a place where people can play

import UIKit

//let noneOptionalValue: String = nil
let optionalValue: String? = nil

func someFunction(someOptionalParam: Int?) {
}

func someFunction(someParam: Int) {
}

//someFunction(someParam: nil)
print(someFunction(someOptionalParam: nil))

//Implicitly Unwrapped Optional(암시적 추출 옵셔널)
var optionalSetValue: Int! = 100
switch optionalSetValue {
case .none:
    print("This optional variable is nil.")
case .some(let value):
    print("Value is \(value)")
}
optionalSetValue = optionalSetValue + 1
optionalSetValue = nil
//optionalSetValue = optionalSetValue + 1
//잘못된 접근으로 인한 런타임 오류 발생

var optionalValue2: Int? = 200
switch optionalValue2 {
case .none:
    print("is nil.")
case .some(let value):
    print("Value is \(value).")
}
optionalValue2 = nil
//optionalValue2 = optionalValue2 + 1
//기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가

