//
//  ViewController.swift
//  Optional
//
//  Created by KimYong Ho on 2018. 1. 25..
//  Copyright © 2018년 KimYong Ho. All rights reserved.
//

import UIKit

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point.init()
    var size = Size.init()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

var changeValue: Int = 0 {
    didSet(oldV) {
        print("oldValue \(oldV)")
    }
    willSet(willV) {
        print("newValue \(willV)")
    }
}
changeValue = 5
