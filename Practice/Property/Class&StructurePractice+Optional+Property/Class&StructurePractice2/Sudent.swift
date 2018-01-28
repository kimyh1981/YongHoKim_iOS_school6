//
//  student.swift
//  Class&StructurePractice2
//
//  Created by KimYong Ho on 2018. 1. 25..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

class Student: Person{
    //초 = 0, 중 = 1, 고 = 2, 대 = 3
    var schoolGrade: Int
    //혈액형
    var blood: String
    
    init(name: String, gender: String, schoolGrade: Int, blood: String) {
        self.schoolGrade = schoolGrade
        self.blood = blood
        super.init(name: name, gender: gender)
    }
}
