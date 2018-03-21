//: Playground - noun: a place where people can play

import UIKit

//Mark: - 1. Introduction of playground
var str = "Hello, Swift"
var currentValue = 50
var targetValue = 55

var differences = currentValue - targetValue
if differences < 0 {
    differences = differences * -1
}
print(differences)

//Mark: - 2. How to make comments
// This is a comment. It is not executed.
// Another line
// Another line

/* This is also a comment
 over many...
 many.../* embedded */
 lines! */

//Mark: - 3. Tuples
let coordinate = (2, 3, 5)
let coordinateDouble = (2.3, 3.5)
let coordinateMixed = (2.5, 2)
let x1 = coordinate.0
let y1 = coordinate.1
let coordinatesName = (x: 2, y: 3)
let x2 = coordinatesName.x
let y2 = coordinatesName.y
let coordinates3D = (x: 2, y: 3, z: 1)
let (x3, y3, z3) = coordinates3D
x3
y3
z3
let (x4, y4, _) = coordinates3D
x4
y4
let (x5, y5, z5) = coordinate
x5
y5
z5


















