//: Playground - noun: a place where people can play

import UIKit
//Mark : - 구조체

//Mark : 프로퍼티 및 메서드
struct Sample {
    var mutableProperty: Int = 100 //가변 프로퍼티
    let immutableProperty: Int = 100 //불변 프로퍼티
    static var typeProperty: Int = 100 //타입 프로퍼티(static을 붙여줌)
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instanceMethod")
    }
    
    //타입 메서드 (static을 붙여줌)
    static func typeMethod() {
        print("typeMethod")
    }
}

//Mark: 구조체 사용
//가변 인스턴스
var mutable: Sample = Sample()
mutable.mutableProperty = 150
//mutable.immutableProperty = 200 //불변 프로퍼티는 값 변경 불가

let immutable: Sample = Sample()
//mutable.immutableProperty = 2000

Sample.typeProperty = 350
Sample.typeMethod()
print(Sample.typeProperty)
Sample.instanceMethod(immutable)
print(Sample.instanceMethod)

struct Student {
    var name: String = "unknown"
    var `class`: String = "Swift"
    var age: Int = 0
    
    static func selfIntroduction() {
        print("여기는 그냥 아무것도 할 수 있는게 없는건가?")
    }
    
    func selfIntroduction() {
        print("저는 \(self.name) 이고요, 나이는 \(age)살이고, \(self.class)반입니다.")
    }
}

Student.selfIntroduction()

var kim: Student = Student()
kim.name = "kim"
kim.class = "iOS"
kim.age = 18
kim.selfIntroduction()

var jina: Student = Student()
jina.age = 20
jina.name = "진아"
jina.class = "Rucby"
jina.selfIntroduction()

Student.selfIntroduction()




















