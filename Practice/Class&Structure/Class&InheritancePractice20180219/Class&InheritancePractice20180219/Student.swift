//
//  Student.swift
//  Class&InheritancePractice20180219
//
//  Created by KimYong Ho on 2018. 2. 20..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

internal class Student: Person {
    var major: String = ""
    
    func introductionOfMajor() {
        print("Our major is only one iOS.")
    }
}

