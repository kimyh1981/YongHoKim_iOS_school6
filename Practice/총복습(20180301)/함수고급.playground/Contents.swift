//: Playground - noun: a place where people can play

import UIKit

//Mark: - 매개변수 기본값 넣기
//기본값을 가지는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다.

//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 기본값...) -> 반환타입 {
//  함수 내용, 함수 구현부
//  return 반환값
//}

func greeting(friend: String, me: String = "Kim") {
    print("Hello \(friend)! I'am \(me).")
}

//매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다.
greeting(friend: "Jason")
greeting(friend: "Jason", me: "Roy")
greeting(friend: "Paul")

//Mark: - 전달인자 레이블
//전달인자 레이블은 함수를 호출할 때
//매개변수의 역할을 좀 더 명확하게 하거나
//함수 사용자의 입장에서 표현하고자 할때 사용함.

//func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//  함수 내용, 함수 구현부
//  return
//}

func greeting(to friend: String, from me: String) {
    print("Hello \(friend), I'm \(me).")
}
greeting(to: "Jason", from: "Kim")


//Mark: - 가변 매개변수
//전달 받을 값의 개수를 알기 어려울 때 사용함
//가변 매개변수는 함수당 하나만 가질 수 있다.

//func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) {
//  함수 내용, 함수 구현부
//  return
//}

func greeting(me: String, to friends: String...) {
    print("Hello \(friends), I'am \(me).")
}
print(greeting(me: "Kim", to: "Jason", "Lee", "Brian", "Dicafrio"))







