//: Playground - noun: a place where people can play

import UIKit

//Mark: - Class vs Struct/Enum

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}
//값타입
let firstStructInstance = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2

print("\(firstStructInstance.property)")
print("\(secondStructInstance.property)")

//참조타입(메모리 주소값 전달)
let firstReferenceInstance = ReferenceType()
var secondReferenceInstance = firstReferenceInstance
secondReferenceInstance.property = 2

print("\(firstReferenceInstance.property)")
print("\(secondReferenceInstance.property)")

struct SomeStruct {
    var someProperty: String = "Property"
}

var someStructInstance: SomeStruct = SomeStruct()

func someFunction(structInstance: SomeStruct) {
    var localVar: SomeStruct = structInstance
    localVar.someProperty = "ABC"
}

someFunction(structInstance: someStructInstance)
print(someStructInstance.someProperty)
print("----------------------------------------------------")
var local: SomeStruct = SomeStruct()
local.someProperty = "ABC"
print(local.someProperty)

var local1: SomeStruct = SomeStruct()
local1.someProperty = "Changed?"
print(local1.someProperty)

print("----------------------------------------------------")
class SomeClass {
    var someProperty: String = "Original Property"
}

var someClassInstance: SomeClass = SomeClass()

func otherFunction(classInstance: SomeClass) {
    var mainVar: SomeClass = classInstance
    mainVar.someProperty = "Duplicated Property"
}

otherFunction(classInstance: someClassInstance)
print(someClassInstance.someProperty)
var mainVar1: SomeClass = SomeClass()
mainVar1.someProperty = "one more time duplicated."
print(someClassInstance.someProperty)
















