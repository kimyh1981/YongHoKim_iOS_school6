//
//  TestForPrivate.swift
//  AccessControl
//
//  Created by KimYong Ho on 2018. 1. 26..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

internal class SomePublicClass {
    var somePublicProperty = 0
    internal func someFilePrivateMethod(num: Int) {
        if num > 100 {
            print("I am a kim of Swift.")
        } else {
            print("Do your best")
        }
    }
    internal func somePrivateMethod(num: Int) {
        if num < 1 {
            print("No method to improve.")
        } else {
            print("Whatever you'd better try.")
        }
    }
}


class Test {
    
    func some() {
        let instance = SomePublicClass()
        instance.someFilePrivateMethod(num: 5)
    }
}
