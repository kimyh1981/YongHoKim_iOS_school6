//
//  main.swift
//  Inheritance
//
//  Created by KimYong Ho on 17/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

//struct Member {
//    var firstName: String
//    var lastName: String
//}

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
class InstrumentPlayer: RockBandCrew {
    override var minimumNumberOfMembers: Int {
        get {
            return super.minimumNumberOfMembers * 2
        }
        set {
            super.minimumNumberOfMembers = newValue / 2
        }
    }
}

func phoneDirectory(_ person: Person) -> String {
    return "\(person.lastName), \(person.firstName)"
}

let person = Person(firstName: "Leo", lastName: "Dicprio")
let bassPlayer = InstrumentPlayer(firstName: "Marcus", lastName: "Miller")
print(phoneDirectory(person))
print(phoneDirectory(bassPlayer))

var consolMixer = Student(firstName: "YR", lastName: "Kook")
consolMixer = bassPlayer
print((consolMixer as Student).firstName)
print((bassPlayer as Student).firstName)

consolMixer = lee
let bassPlayer2 = consolMixer as? InstrumentPlayer
if let bassPlayer2 = bassPlayer2 {
    print(bassPlayer2.minimumNumberOfMembers)
} else {
    print("Not a bass player")
}
//print(bassPlayer2.minimumNumberOfMembers)

class StudentMechanic: Student {
    var droppedClasses: [Grade] = []
    override func recordGrade(_ grade: Grade) {
        if grade.letter == "F" {
            droppedClasses.append(grade)
        }
    }
    var isApplicableForDropOfSchool: Bool {
        return droppedClasses.count == 4
    }
}

var mechanic = StudentMechanic(firstName: "Machine", lastName: "Anderson")
mechanic.recordGrade(Grade(letter: "F", points: 0, credits: 0))
print(mechanic.isApplicableForDropOfSchool)
mechanic.recordGrade(Grade(letter: "F", points: 0, credits: 0))
mechanic.recordGrade(Grade(letter: "F", points: 0, credits: 0))
mechanic.recordGrade(Grade(letter: "F", points: 0, credits: 0))
print(mechanic.isApplicableForDropOfSchool)



