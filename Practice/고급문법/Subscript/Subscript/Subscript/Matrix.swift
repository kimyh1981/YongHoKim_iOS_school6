//
//  Matrix.swift
//  Subscript
//
//  Created by KimYong Ho on 2018. 3. 2..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import Foundation

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
       
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            return grid[(row * columns) + column]
        }
        set {
            grid[(row * columns) + column] = newValue
        }
    }
}
var metrix = Matrix(rows: 2, columns: 2)
//metrix[0, 0] = 1
//metrix[0, 1] = 2.5


extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

struct MyStack<T> {
    private var stackTemp: [T] = []
    mutating func push(_ element: T)
    {
        self.stackTemp.append(element)
    }
    mutating func pop() -> T
    {
        return stackTemp.removeLast()
    }
}

struct MyName<T> {
    var name: T
}




