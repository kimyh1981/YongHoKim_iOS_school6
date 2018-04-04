//
//  main.swift
//  String
//
//  Created by KimYong Ho on 03/04/2018.
//  Copyright © 2018 OhTeam. All rights reserved.
//

import Foundation

var name = "Kim"
let message = "Hello, my name is \(name)."
let message2 = "\n" + name + " " + "was here."
let message3 = "\nHello\nGoodbye"
print(message, message2, message3)

var message4 = """
This
is
a
long
message
"""
print(message4)

for char in name {
    print(char)
}

let strLen = name.count
//let secondChar = name[1]
let cafeNormal = "café"
let cafeCombining = "cafe\u{0301}"
print(cafeNormal, cafeCombining)

print(cafeNormal.count)
print(cafeCombining.count)
print(cafeNormal.unicodeScalars.count)
print(cafeCombining.unicodeScalars.count)

let firstIndex = cafeCombining.startIndex
let firstChar = cafeCombining[firstIndex]
print(firstChar)

let lastIndex0 = cafeCombining.endIndex
print(lastIndex0)
let lastIndex = cafeCombining.index(before: cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]
print(lastChar)

let thirdIndex = cafeCombining.index(cafeCombining.startIndex, offsetBy: 2)
let thirdChar = cafeCombining[thirdIndex]
print(thirdChar)

print(lastChar.unicodeScalars.count)
lastChar.unicodeScalars.forEach { (codePoint) in
    print(codePoint.value)
}

let equal = cafeNormal == cafeCombining

let backwardsName = name.reversed()
print(String(backwardsName))

let secondCharIndex = backwardsName.index(backwardsName.startIndex, offsetBy: 1)
let secondChar = backwardsName[secondCharIndex]
let backwardsNameString = String(backwardsName)

print(secondChar, backwardsNameString)

let fullName = "Kim Yong Ho"
let spaceIndex = fullName.index(of: " ")
if let spaceIndex = spaceIndex {
    let firstName = fullName[fullName.startIndex..<spaceIndex]
    let lastName = fullName[fullName.index(after: spaceIndex)...]
    let forced = String(lastName)
    print(firstName)
    print(lastName)
    print(forced)
}
























print("--------------------------------------")

