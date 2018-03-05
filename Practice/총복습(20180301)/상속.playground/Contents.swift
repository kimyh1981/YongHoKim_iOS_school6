//: Playground - noun: a place where people can play

import UIKit

class Person {
    var name: String = ""
    func selfIntroduction() {
        print("저는 \(name)입니다.")
    }
    //final 키워드를 사용하면 재정의를 방지할 수 있음.
    final func sayHello() {
        print("hello")
    }
    //타입 메서드
    //재정의 불가 타입 메서드 - static
    static func typeMethod() {
        print("type method - static")
    }
    //재정의 가능 타입 메서드 - class
    class func classMethod() {
        print("type method - class")
    }
}

var kim: Person = Person()
kim.name = "Kim"
kim.selfIntroduction()
kim.sayHello()

class Student: Person {
    var major: String = ""
    override func selfIntroduction() {
        print("저의 이름은 \(name)전공은 \(major)입니다.")
    }
    override class func classMethod() {
        print("Overriden func")
    }
    //static을 사용한 타입 메서드는 재정의 할 수 없음.
//    override static func typeMethod() {
//        print("Not able to override.")
//    }
    //final 키워드를 사용한 메서드, 프로퍼티는 재정의 할 수 없음.
//    override final func sayHello() {
//        print("final can't be overriden.")
//    }
    
}
var Lee: Student = Student()
Lee.name = "Lee"
Lee.major = "English"
Lee.selfIntroduction()

var Park: Person = Person()
Park.name = "Park"


class University: Student {
    var grade: Int = 0
    func totalIntroduction() {
        print("저의 이름은 \(name)이고, 전공은 \(major) 그리고 저의 점수는 \(grade)입니다.")
    }
}

var jason: University = University()
jason.name = "Jason"
jason.grade = 99
jason.major = "iOS"
jason.totalIntroduction()



