//
//  TestForPrivate1.swift
//  AccessControl
//
//  Created by KimYong Ho on 2018. 1. 26..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation


class PrivateTest {
    
    func some() {
        let instance = SomePublicClass()
        instance.someFilePrivateMethod(num: 5)
        instance.somePrivateMethod(num: 5)
    }
}
