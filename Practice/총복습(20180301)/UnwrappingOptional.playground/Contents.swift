//: Playground - noun: a place where people can play

import UIKit

//옵셔널을 꺼내는 방법
//1)Optional Binding : nil체크 + 안전한 값 추출
//2)Force Unwrapping

func printName(_ name : String) {
    print(name)
}
//1)Optional Binding : nil체크 + 안전한 값 추출
var myName: String? = nil //타입을 ?로 해주었기 때문에 아래 강제추출 필요
//if let 상수는 아래 구문 아래서만 사용 가능
if let name: String = myName {
    printName(myName!) //강제추출을 해주어야 함.
} else {
    print("myName == nil")
}

var myGfName: String? = "Sophia"
var myXgFname: String? = nil

if let name1 = myGfName, let name2 = myXgFname {
    print("\(name1) and \(name2)")
    //myXgFname is nil, so not run.
}
myXgFname = "Jenny"

if let name1 = myGfName, let name2 = myXgFname {
    print("\(name1) and \(name2)")
}

//2)Force Unwrapping : 강제추출
func printNickName(_ nickName: String) {
    print(nickName)
}
var nickName: String? = "NiceGuy"
printNickName(nickName!) //강제 추출을 하여야 실행이 가능함
nickName = nil
//printNickName(nickName!) nil이므로 런타임 오류 발생

var nickName1: String? = "Queen"
printNickName(nickName1!)

var nickName2: String! = nil
//printNickName(nickName2)
//nil 값이 전달되기 때문에 런타임 오류생발생








