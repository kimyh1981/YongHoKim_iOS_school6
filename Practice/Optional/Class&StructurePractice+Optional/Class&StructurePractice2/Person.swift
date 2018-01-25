//
//  Person.swift
//  Class&StructurePractice2
//
//  Created by KimYong Ho on 2018. 1. 23..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var gender: String
    var subject: [Subject] = []
    
    init(name: String, gender: String) {
        self.name = name
        self.gender = gender
    }

    func addSubject(name: String, score: Int) {
        let subjectInstance = Subject(name: name, score: score)
        subject.append(subjectInstance)
    }
    
    func setSubjects(subjectDic: [String: Int]) {
        for (subName, subScore) in subjectDic {
            addSubject(name: subName, score: subScore)
        }
    }
    
    func power() -> Int {
        for subject in subject {
            if subject.name == "Battle"{
                return subject.score
            }
        }
        return 0
    }
    
    func getIQ() -> Int {
        for subject in subject {
            if subject.name == "Math" {
                return subject.score
            }
        }
        return 0
    }
}
