//: Playground - noun: a place where people can play

import UIKit

//Mark: - 종류
/*
 저장 프로퍼티(stored property)
 연산 프로퍼티(computed property)
 인스턴스 프로퍼티(instance property)
 타입 프로퍼티(type property)
*/

//프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있음
//다만 열거형 내부에는 연산 프로퍼티만 구현 할 수 있음.
//연산 프로퍼티는 var로만 선언할 수 있음

struct Student {
    //인스턴스 저장 프로퍼티
    var name: String = ""
    var `class`: String = "Swift"
    var koreanAge: Int = 0
    
    //인스턴스 연산 프로퍼티
    var westernAge: Int {
        get {
            return koreanAge - 1
        }
        set(inputValue) {
            koreanAge = inputValue + 1
        }
    }
    //타입 저장 프로퍼티
    static var typeDescription: String = "학생"
    
    /*
    //인스턴스 메서드
    func selfIntroduction() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
    */
    
    //읽기 전용 인스턴스 연산 프로퍼티
    var selfIntroduction: String {
        get {
            return "저는 \(self.class)반 \(name)입니다."
        }
    }
    /*
     //타입 메서드
     static func selfIntroduction() {
     print("학생타입입니다.")
     }
    */
    
    //읽기전용 타입 연산 프로퍼티
    //읽기전용에서는 get을 생략할 수 있습니다.
    static var selfIntroduction: String {
        return "학생타입입니다."
    }
}
//Mark: - 사용
//타입 연산 프로퍼티 사용
print(Student.selfIntroduction)

//인스턴스 생성
var kim: Student = Student()
kim.koreanAge = 38

//인스턴스 저장 프로퍼티 사용
kim.name = "Kim"
print(kim.name)

//인스턴스 연산 프로퍼티 사용
print(kim.selfIntroduction)

print("제 한국 나이는 \(kim.koreanAge)살이고, 미국나이는 \(kim.westernAge)살 입니다.")

//Mark: - 응용
struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}
var moneyInMyPocket: Money = Money()
moneyInMyPocket.won = 11000
print(moneyInMyPocket.won)

moneyInMyPocket.dollar = 1000000
print(moneyInMyPocket.won)

moneyInMyPocket.won = 999000
print(moneyInMyPocket.dollar)

//Mark: - 지역변수, 전역변수
//저장 프로퍼티와 연산 프로퍼티의 기능은
//함수, 메서드, 클로저, 타입 등의 외부에 위치한
//지역/전역 변수에도 모두 사용 가능합니다.

var a: Int = 100
var b: Int = 200
var sum: Int {
    return a + b
}
print(sum)
