//: Playground - noun: a place where people can play

import UIKit

//let first: Int = 5
//let second: Int = 5
//var biggerValue: Int = 0
//
//if first > second {
//    biggerValue = first
//} else if first == second {
//    biggerValue = first
//} else if first < second {
//    biggerValue = second
//} else if first == 5 {
//    biggerValue = 100
//}
//
//print(biggerValue)

//let first: Int = 5
//let second: Int = 5
//var biggerValue: Int = 0
//
//if (first > second) {
//    biggerValue = first
//} else if (first == second) {
//    biggerValue = first
//} else if (first < second) {
//    biggerValue = second
//} else if (first == 5) {
//    biggerValue = 100
//}
//
//print(biggerValue)

//let integerValue: Int = 0
//switch integerValue {
//case 0:
//    print("Value == zero")
//case 1...10:
//    print("Value == 1~10")
//    fallthrough
//case Int.min..<0, 101..<Int.max:
//    print("Value < 0 or Value > 100")
//    break
//default:
//    print("10 < Value <= 100")
//}

//let doubleValue: Double = 3.0
//switch doubleValue {
//case 0:
//    print("Value == Zero")
//case 1.5...10.5:
//    print("1.5 <= Value <= 10.5")
//default:
//    print("Value == \(doubleValue)")
//}

//let stringValue: String = "Kim"
//
//switch stringValue {
//case "Lee":
//    print("His family name is Lee.")
//case "Park":
//    print("Is Park used for family name in Korea?")
//case "Choi", "Cho", "Kim":
//    print("He or she is \(stringValue).")
//    fallthrough
//default:
//    print("\(stringValue) said 'I am a king family'.")
//}

//typealias NameAge = (name: String, age: Int)
//let tupleValue: NameAge = ("Kim", 38)
//
//switch tupleValue {
//case ("Kim", 38):
//    print("You found me correctly.")
//default:
//    print("Who you are looking for?")
//}

//typealias NameAge = (name: String, age: Int)
//let tupleValue: NameAge = ("Kim", 38)
//switch tupleValue {
//case ("Kim", 40):
//    fallthrough
//case ("Kim", _):
//    print("You pick my name only correctly.")
//    fallthrough
//case (_, 38):
//    print("You pick my age only correctly.")
//    fallthrough
//default:
//    print("You don't know me.")
//}

//[질문 필요]
//let title: String = "Regular"
//let yearVacation: Int = 1
//let internOrNot: Bool = false
//
//switch title {
//case "Regular" where internOrNot == true:
//    print("I am an intern.")
//    fallthrough
//case "Regular" where yearVacation < 2 && internOrNot == false:
//    print("I am a freshman.")
//    fallthrough
//case "Regular" where yearVacation > 5:
//    print("I have been working in this company for several years.")
//    fallthrough
//case "Regualr":
//    print("I am a regular employee.")
//    fallthrough
//case "Deputy manager":
//    print("I am a deputy manager.")
//    fallthrough
//default:
//    print("Are you a boss?")
//}

//[질문 필요]
//let stringValue: String = "Joker"
//switch stringValue {
//case "Kim":
//    print("He is Kim.")
//case "Jay":
//    print("He is Jay")
//case "Jenny":
//    fallthrough
//case "Joker":
//    fallthrough
//case "Nova":
//    print("He or she is \(stringValue)")
//default:
//    print("\(stringValue) said, I don't know who you are.")
//}

//for i in 0...5 {
//    if i % 2 == 0 {
//        print(i)
//        continue
//    }
//    print("\(i) == 홀수")
//}
//
//var nums:[Int] = [1,2,3,4,5,6,7]
//while nums.isEmpty == false {
//    print("Order of nums \(nums.removeFirst())")
//}





