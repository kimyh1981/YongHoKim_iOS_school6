//: Playground - noun: a place where people can play

import UIKit

//Mark: - 매개변수 기본값 넣기
//기본값을 가지는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다.

//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 기본값...) -> 반환타입 {
//  함수 내용, 함수 구현부
//  return 반환값
//}

func greeting(friend: String, me: String = "Kim") {
    print("Hello \(friend)! I'm \(me).")
}

//매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다.
print(greeting(friend: "Jason"))
print(greeting(friend: "Jason", me: "Roy"))
print(greeting(friend: "Paul"))

//Mark: - 전달인자 레이블
//전달인자 레이블은 함수를 호출할 때
//매개변수의 역할을 좀 더 명확하게 하거나
//함수 사용자의 입장에서 표현하고자 할때 사용함.

//func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//  함수 내용, 함수 구현부
//  return
//}

func greeting(to friend: String, from father: String) {
    print("Hello \(friend), I'm a son of \(father).")
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
    print("Hello \(friends), I'm \(me).")
}
print(greeting(me: "Kim", to: "Jason", "Lee", "Brian", "Dicafrio"))
print(greeting(me: "Kim"))
//가변 매개변수 다른 예
func totalSum(nums: Int...) -> Int {
    var i: Int = 0
    for n in nums {
        i += n
    }
    return i
}
print(totalSum(nums: 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20))

//Mark: - 데이터 타입으로서의 함수
//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어입니다.
//스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
//매개변수를 통해 전달할 수도 있습니다.

//Mark: 함수의 타입 표현
//반환타입을 생략할 수 없다!
// (매개변수1타입, 매개변수2타입...) -> 반환타입

var someFunction: (String, String) -> Void = greeting(to:from:)
print(someFunction("Jieun", "Kim"))
someFunction = greeting(to:from:)
print(someFunction("John", "Bibber"))

//타입이 다른 함수(위에 존재하지 않음)는 할당 할 수 없습니다.
//someFunction = greeting(me: from:)

func runAnother(function: (String, String) -> Void) {
    function("Jenny", "Mike")
}
runAnother(function: greeting(friend:father:))
runAnother(function: someFunction)








