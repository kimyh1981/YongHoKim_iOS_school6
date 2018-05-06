//: Playground - noun: a place where people can play

import UIKit

struct Person {
    var firstName: String {
        didSet {
            if let spaceIndex = firstName.index(of: " ") {
                print("No spaces allowed! Reverting change.")
                firstName = oldValue
            } else {
            print("The value of firstName changed from \(oldValue) to \(firstName )")
            }
        }
    }
    var lastName: String
    
    static var outOfWedlock = "Snow"
    
    var fullName: String {
        get {
            return "\(firstName) \(lastName)"
        }
        set {
            if let spaceIndex = newValue.index(of: " ") {
            firstName = String(newValue[..<spaceIndex])
            lastName = String(newValue[newValue.index(after: spaceIndex)...])
            }
        }
    }
    lazy var isAlive: Bool = {
        print("Checking life...")
        if fullName == "Leonardo Dicaprio" {
            return false
        } else {
            return true
        }
    }()
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var person = Person(firstName: "YH", lastName: "Kim")
person.firstName = "SH"
let sh = person.firstName

person.lastName = "Ahn"
person.fullName

person.fullName = "PS Kim"
person.firstName
person.lastName

person.fullName = "Leo Dicprio Kim"
person.firstName
person.lastName

person.lastName = Person.outOfWedlock
person.fullName

person.lastName = "Lee"
person.fullName

person.firstName = "Leonardo"
print(person.fullName)

print("Here 1")
person.isAlive

var person2 = Person(firstName: "Leonardo", lastName: "Dicaprio")
person2.isAlive
