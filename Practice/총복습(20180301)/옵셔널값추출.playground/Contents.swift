//: Playground - noun: a place where people can play

import UIKit

func printName(_ name: String) {
    print(name)
}
var myName: String? = nil
if let name: String = myName {
    print(name)
} else {
    print("Myname is nil")
}
//printName(name) -> 상수 사용 범위를 벗어났기 때문에 컴파일 오류 발생됨
//name 상수는 if-let구문 내에서만 사용가능!

