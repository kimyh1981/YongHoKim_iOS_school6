//
//  Calculator.swift
//  Class&StructurePractice2
//
//  Created by KimYong Ho on 2018. 1. 23..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

class Calculator {
    
    //각 평균 구하기
    func average(student:Student) {
        let allSubject: [Subject] = student.subject
        let schoolGrade = student.schoolGrade
        var totalScore: Int = 0
        for n in allSubject {
            totalScore += n.score
        }
        let average = Double(totalScore) / Double(allSubject.count)
        print("\(student.name)'s schoolGrade is \(student.schoolGrade) and his average of all subjects is \(average).")
    }
    //가장 싸움을 잘하는 아이는?
    func jjang(_ student:Person...){
        var jjangName: String = ""
        var maxPower: Int = 0
        for person in student {
            let challengerPower = person.power()
            //과목들 중에서 싸움을 찾아서 싸움의 파워를 가져오기
            if maxPower < challengerPower {
                maxPower = challengerPower
                jjangName = person.name
            }
            
        }
        print("The person who is most possible to be scouted from UFC is \(jjangName).")
    }
    //고딩 둘중 수학 점수가 높은 아이는?
    func geniusHighSchool(stu1:Person, stu2:Person) {
        let stu1IQ = stu1.getIQ()
        let stu2IQ = stu2.getIQ()
        
        var geniusPerson:Person?
        var diffScore: Int = 0

        if stu1IQ > stu2IQ {
            geniusPerson = stu1
            diffScore = stu1IQ - stu2IQ
            if stu2IQ > stu1IQ {
                geniusPerson = stu2
                diffScore = stu2IQ - stu1IQ
                print("\(geniusPerson!.name)'s score of mathmatics is just \(diffScore) higher than another one, but don't be rude, score is not at all in life.")
            } else {
                print("No people who deserve to ignore anyone.")
            }
        }
    }
}
