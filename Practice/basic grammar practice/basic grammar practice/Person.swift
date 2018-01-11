//
//  Person.swift
//  basic grammar practice
//
//  Created by KimYong Ho on 2018. 1. 11..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

class Car {

    var name: String = ""
    var miles: Int = 0
    var amortizationPermiles: Int = 0
    var newCarPrice: Int = 0
    
    func sell() {
        print("A price of new \(name) is \(newCarPrice) and one of used car \(name)s in our shop was \(miles), today we sold this used car. So we earned \((newCarPrice - ((miles)*(amortizationPermiles)))).")
    
    }
    
}


