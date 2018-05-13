//
//  main.swift
//  StructVSClass
//
//  Created by KimYong Ho on 13/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

struct PersonStruct {
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}


var person1 = PersonStruct(firstName: "YH", lastName: "Kim")
let person2 = person1
person1.lastName = "Lee"
print(person1.lastName)
print(person2.lastName)

var person3 = PersonClass(firstName: "Leo", lastName: "Dic")
var person4 = person3

person3.lastName = "Kim"
print(person3.lastName)
print(person4.lastName)

person4 = PersonClass(firstName: "SH", lastName: "Ahn")
//print(person4.firstName, person4.lastName)
person4 = person3
print(person3.firstName, person3.lastName)
