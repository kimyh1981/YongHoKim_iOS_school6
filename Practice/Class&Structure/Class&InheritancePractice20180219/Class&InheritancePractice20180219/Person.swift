//
//  Person.swift
//  Class&InheritancePractice20180219
//
//  Created by KimYong Ho on 2018. 2. 20..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

class Person {
    var name: String = ""
    var age: Int = 0
    
    var introduction: String {
        return "Name: \(name), Age: \(age)"
    }
    func study() {
        print("I am studying iOS.")
    }
}
