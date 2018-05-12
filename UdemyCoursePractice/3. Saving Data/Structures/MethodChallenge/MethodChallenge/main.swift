//
//  main.swift
//  MethodChallenge
//
//  Created by KimYong Ho on 12/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

struct Student {
    var firstName: String
    var lastName: String
    var score: Int
}

struct Classroom {
    var className: String
    var students: [Student]
    
    func highestGrade() -> Int {
        return students.reduce(0) { result, student in
            return student.score > result ? student.score : result
        }
    }
}

var kim = Student(firstName: "YH", lastName: "Kim", score: 88)
var leo = Student(firstName: "Leo", lastName: "Dicaprio", score: 58)
var jenny = Student(firstName: "Jenny", lastName: "Sierra", score: 93)
var john = Student(firstName: "John", lastName: "Lee", score: 77)
var sonny = Student(firstName: "Sonny", lastName: "Quick", score: 87)
var ban = Student(firstName: "Ban", lastName: "Miller", score: 68)
var classroom = Classroom(className: "iOS Development", students: [kim, leo, jenny, john, sonny, ban])
var result = classroom.highestGrade()
print(result)

extension Classroom {
    mutating func curveGrade() {
        let difference = 100 - highestGrade()
        for i in 0..<students.count {
            students[i].score += difference
        }
        students.sort { student1, student2 in
            return student1.score > student2.score
        }
    }
}
var result1 = classroom.curveGrade()
print(result1)

var result2 = classroom.students[0].score
var result3 = classroom.students[1].score
var result4 = classroom.students[2].score
var result5 = classroom.students[3].score
var result6 = classroom.students[4].score
var result7 = classroom.students[5].score
print(result2, result3, result4, result5, result6, result7)

extension Student: CustomStringConvertible {
    var description: String {
        return "\(lastName), \(firstName): \(score)"
        
    }
}
for student in classroom.students {
    print(student)
}

extension Classroom: CustomStringConvertible {
    var description: String {
        var info = ""
        info += "\(classroom.className) \n"
        for student in students {
            info += "\(student) \n"
        }
        return info
    }
}

print(classroom)

