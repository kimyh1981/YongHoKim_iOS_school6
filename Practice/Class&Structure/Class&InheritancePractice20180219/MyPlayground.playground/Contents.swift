//: Playground - noun: a place where people can play

import UIKit

internal class Person {
    internal var name: String = ""
    internal var age: Int = 0
    
    fileprivate var introduction: String {
        return "Name: \(name), Age: \(age)"
    }
    public func speak() {
        print("\(name) study iOS.")
    }
}

let kim: Person = Person()
kim.name = "Kim"
kim.age = 1000
print(kim.introduction)
print(kim.speak())

class Student: Person {
    var major: String = ""
    
    func study() {
        print("\(name) major is iOS.")
    }
}
let kim1: Student = Student()
kim1.name = "Kim"
kim1.age = 99
print(kim1.introduction)
print(kim1.speak())
print(kim1.study())

let lee: Student = Student()
lee.name = "Lee"
lee.age = 2000
lee.major = "iOS"
print(lee.introduction)
print(lee.speak())
print(lee.study())
