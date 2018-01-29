//: Playground - noun: a place where people can play

import UIKit

typealias NameAge = (name: String, age: Int)
let tupleValue: NameAge = ("Kim", 38)

switch tupleValue {
case ("Kim", 38):
    print("You are correct!" + " " + "Man!")
default:
    print("Guess one more time.")
}

for i in 0...5 {
    if i % 2 == 0 {
        print(i)
    }
}

let helloSwift: String = "Hello Swift!"
for cha in helloSwift.characters {
    print(cha)
}

var result: Int = 1
for _ in 1...3 {
    result *= 10
}
print(result)

let friends: [String:Int] = ["Jay":35, "Joe":29, "Jenny":31]
for tuple in friends {
    print(tuple)
}

let 주소: [String:String] = ["도":"충청북도", "시군구":"청주시 청원구", "동읍면":"율량동"]
for (키, 값) in 주소 {
    print("\(키) : \(값)")
}

//While 구문
var names: [String] = ["Joker", "Jenny", "Nova", "YH"]
while names.isEmpty == false {
    print("Good bye \(names.removeFirst())")
}
