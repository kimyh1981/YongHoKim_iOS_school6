//: Playground - noun: a place where people can play

import UIKit

//Mark: 프로퍼티 & 메서드

class Sample {
    var mutableProperty: String = "가변프로퍼티" //가변 프로퍼티
    let immutableProperty: String = "불변프로퍼티" //불변 프로퍼티
    static var typePropery: String = "타입프로퍼티" //타입 프로퍼티
    
    //인스턴스 메서드
    func instanceMethod() {
        print("InstanceMethod")
    }
    //타입 메서드
    //재정의(override) 불가 타입 메서드
    static func typeMethod() {
        print("This is type method - static and none overridable function in subclass")
    }
        
    //재정의(override) 가능 타입 메서드
    class func classMethod() {
        print("This is type method - class.")
    }
    
}

var mutableReference: Sample = Sample()
print(mutableReference.mutableProperty)
mutableReference.mutableProperty = "가변됨"
//mutableReference.immutableProperty = "가변됨?" //불변타입 프로퍼티라됨안됨
print(mutableReference.mutableProperty)

print("////////////////////////////////////////")



let immutableReference: Sample = Sample()
print(immutableReference.immutableProperty)
//immutableReference.immutableProperty = "불변임?"

Sample.typeMethod()
Sample.classMethod()

Sample.typePropery = "타입프로퍼티입니다"
print(Sample.typePropery)

class Student {
    var name: String = ""
    var `class`: String = "Swift"
    
    func selfIntroduction() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
    
    class func selfIntroduction() {
        print("학생 타입입니다.")
    }
}

var kim: Student = Student()
kim.name = "Kim"
kim.class = "iOS"
kim.selfIntroduction()

Student.selfIntroduction()

let jina: Student = Student()
jina.class = "Swift"
jina.name = "진아"
jina.selfIntroduction()

