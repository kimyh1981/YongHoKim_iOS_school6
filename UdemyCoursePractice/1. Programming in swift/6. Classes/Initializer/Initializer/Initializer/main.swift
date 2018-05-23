//
//  main.swift
//  Initializer
//
//  Created by KimYong Ho on 22/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

//이니셜라이저 다시 복습하기 : 번역 먼저 하고 다시 보기!


struct Score {
    var letter: Character
    var points: Double
    var credits: Double
}

class Human {
    var firstName: String
    var lastName: String
    
    required init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Human {
    var scores: [Score] = []
    
    convenience init(trnsfer: Student) {
        self.init(firstName: trnsfer.firstName, lastName: trnsfer.lastName)
    }
    
    required init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    func recordScore(_ score: Score) {
        scores.append(score)
    }
}

class ClubWinner: Student {
    var failedPart: [Score] = []
    var club: [String]
    
    init(club: [String], firstName: String, lastName: String) {
        self.club = club
        super.init(firstName: firstName, lastName: lastName)
        recordScore(Score(letter: "P", points: 0, credits: 0))
    }
    required init(firstName: String, lastName: String) {
        self.club = []
        super.init(firstName: firstName, lastName: lastName)
    }
    
    override func recordScore(_ score: Score) {
        super.recordScore(score)
        if score.letter == "F" {
            failedPart.append(score)
        }
    }
    
    var isValid: Bool {
        return failedPart.count > 3
    }
}
