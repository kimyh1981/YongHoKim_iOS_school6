//: Playground - noun: a place where people can play

import UIKit
//조건문에 많이 사용 되는 if-else
var str = "Hello, playground"

let someInteger = 100
if someInteger < 100 {
    print("someInteger is less than 100.")
} else if someInteger > 100 {
    print("someInteger is bigger than 100.")
} else {
    print("someInteger is 100.")
}

//범위 연산자를 활용하면 더욱 쉽고 유용합니다.

switch someInteger {
case 0:
    print("0")
case 1..<100:
    print("1~99")
case 101...Int.max:
    print("over 100")
default:
    print("100")
}

//정수 외의 대부분의 기본 타입을 사용할 수 있습니다.
switch "Kim" {
case "Lee", "Kim":
    print("Lee")
    fallthrough
case "Park":
    print("Kim")
    fallthrough
case "Kim":
    print("Kim")
default:
    print("Nobody")
 }
