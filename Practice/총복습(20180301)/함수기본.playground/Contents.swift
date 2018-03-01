//: Playground - noun: a place where people can play

import UIKit

//Mark: - 함수 선언

//Mark: 함수 선언의 기본형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//     함수 내용, 함수 구현부
//     return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

//Mark: 반환 값이 없는 함수
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입...) -> Void {
//  함수 내용, 함수 구현부
//  return
//}

func printMyName(name: String) -> Void {
    print(name)
}

//Mark: 매개변수가 없는 함수
//func 함수이름() -> 반환타입 {
//  함수 내용, 함수 구현부
//  return 반환값
//}

func maximumIntegerValue() -> Int {
    return Int.max
}

//Mark: 매개변수와 반환값이 없는 함수
//func 함수이름() -> Void {
//  함수 내용, 함수 구현부
//  return
//}

func hello() -> Void {
    print("hello YongHo")
}

//func 함수이름() {
//  함수 내용, 함수 구현부
//  return
//}

func bye() { print("Bye YongHo") }

//Mark: - 함수 호출
sum(a: 3, b: 5)
printMyName(name: "Kim")
print(maximumIntegerValue())
hello()
bye()




