//
//  main.swift
//  Inheritance
//
//  Created by KimYong Ho on 17/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

//Person을 상속 받음으로서 Student와 Person의 Property가 중복되지 않는다.
class Student: Person {
//    var firstName: String
//    var lastName: String
    var grades: [Grade] = []
    
//    init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}

let kim = Person(firstName: "YH", lastName: "Kim")
let lee = Student(firstName: "SY", lastName: "Lee")
print(kim.firstName)
print(lee.firstName)

let literature = Grade(letter: "A", points: 10, credits: 3)
lee.recordGrade(literature)
//kim.recordGrade(literature)

class RockBandCrew: Student {
    var minimumNumberOfMembers = 3
}
class Bass: RockBandCrew {
    override var minimumNumberOfMembers: Int {
        get {
            return super.minimumNumberOfMembers * 2
        }
        set {
            super.minimumNumberOfMembers = newValue / 2
        }
    }
}


















