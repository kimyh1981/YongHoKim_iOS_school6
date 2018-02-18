//: Playground - noun: a place where people can play

import UIKit

let friends: [String:Int] = ["Kim":18, "Lee":16, "Choi":15]
for a in friends {
    print(a)
}

var names: [String] = ["kim", "Lee", "Choi"]
while names.isEmpty == false {
    print("Good bye \(names.removeFirst())")
}

func hello(name: String) -> String {
    return "Hello \(name)"
}
let helloJenny: String = hello(name: "Jenny")
print(helloJenny)

func sayHello(_ name: String, _ times: Int = 3) -> String {
    var result: String = ""
    for _ in 0..<times {
        result += "Hello \(name)!" + " "
    }
    return result
}
print(sayHello("Kim"))

func sayHelloToFriends(me: String, freinds names: String...) -> String {
    var result: String = ""
    for name in names {
        result += "Hello \(name)!" + " "
    }
    result += "I'm Kim!"
    return result
}
print(sayHelloToFriends(me: "Kim", freinds: "Lee", "Park", "Choi"))
print(sayHelloToFriends(me: "Kim"))

var numbers: [Int] = [1, 2, 3]
func nonReferenceParameter(_ arr: [Int]) {
    var copiedArr: [Int] = arr
    copiedArr[1] = 1
}

func referenceParameter(_ arr: inout [Int]) {
    arr[1] = 1
}

nonReferenceParameter(numbers)
print(numbers[1])

referenceParameter(&numbers)
print(numbers[1])

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempValue = a
    a = b
    b = tempValue
}

var someInt = 3
var anotherInt = 100
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and another is now \(anotherInt).")

var aInt = 1000
var bInt = 2000
swapTwoInts(&aInt, &bInt)
print("aInt is now \(aInt), and bInt is now \(bInt).")


















