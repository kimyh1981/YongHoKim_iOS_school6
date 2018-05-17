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
