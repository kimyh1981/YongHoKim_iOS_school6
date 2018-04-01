//
//  Closure.swift
//  ClosureEtc
//
//  Created by KimYong Ho on 01/04/2018.
//  Copyright © 2018 KimYong Ho. All rights reserved.
//

import Foundation

func multiplyClosure(a: Int, b: Int) -> Int {
        return a * b
}

func closure(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
   let result = operation(a, b)
    print(result)
    return result
}


