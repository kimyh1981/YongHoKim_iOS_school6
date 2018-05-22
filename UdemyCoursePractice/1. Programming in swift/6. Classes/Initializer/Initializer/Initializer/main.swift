//
//  main.swift
//  Initializer
//
//  Created by KimYong Ho on 22/05/2018.
//  Copyright © 2018 KimYH. All rights reserved.
//

import Foundation

struct Score {
    var letter: Character
    var points: Double
    var credits: Double
}

class Human {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student: Human {
    var scores: [Score] = []
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
