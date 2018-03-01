//: Playground - noun: a place where people can play

import UIKit

/* collection Type */
/* Array, Dictionary, Set */

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - key와 value의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//Marck: - Array
//빈 Int Array 생성
var integers: Array<Float> = Array<Float>()
integers.append(1)
integers.append(100)
integers.append(100.1111111)

integers.contains(1)
integers.contains(111)

integers.remove(at: 2)
integers
integers.removeLast()
integers.removeAll()
integers.count

//integers[0]

var doubles: Array<Double> = [Double]()
var strings: [String] = [String]()
var characters: [Character] = []

//Mark: Dictionary

//Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: [String: Any] = [:]
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100
anyDictionary["otherKey"] = 200
anyDictionary
anyDictionary.count

anyDictionary["someKey"] = "dictionary"
anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary
anyDictionary["someKey"] = nil
anyDictionary

let emptyDictionary: [String: String] = [:]
var initializedDictionary: [String: Any] = ["name":"Kim", "gender":"male"]

//emptyDictionary["key"] = "value"
//let someValue: Any = initializedDictionary["name"] as Any
////let someValue: String = initializedDictionary["name"] as! String
//let someValue1: Any = initializedDictionary["gender"] as Any
initializedDictionary["name"] = "Lee"
initializedDictionary["age"] = "18"
initializedDictionary["address"] = "Seoul"
initializedDictionary
initializedDictionary["gender"] = "female"
initializedDictionary
initializedDictionary.removeValue(forKey: "name")
initializedDictionary["name"] = "Park"
initializedDictionary
initializedDictionary["hobby"] = "playing Guitar"
initializedDictionary["nickName"] = "HandsomeMan"
initializedDictionary
initializedDictionary.index(forKey: "gender")
let index = initializedDictionary.index(forKey: "age")
print("Lee is \(initializedDictionary[index!].key): \(initializedDictionary[index!].value).")
let index1 = initializedDictionary.index(forKey: "name")
print("His family name is \(initializedDictionary[index1!].key): \(initializedDictionary[index1!].value).")
let index2 = initializedDictionary.index(forKey: "address")
print("He lives in \(initializedDictionary[index2!].key): \(initializedDictionary[index2!].value).")
let index3 = initializedDictionary.index(forKey: "gender")
print("His gender is \(initializedDictionary[index3!].key): \(initializedDictionary[index3!].value).")
let index4 = initializedDictionary.index(forKey: "hobby")
print("His hobby is \(initializedDictionary[index4!].key): \(initializedDictionary[index4!].value).")
let index5 = initializedDictionary.index(forKey: "nickName")
print("His nickname is \(initializedDictionary[index5!].value).")
print("He has a \(initializedDictionary[index5!].key): \(initializedDictionary[index5!].value).")
print("He doesn't have a \(initializedDictionary[index5!].key).")
print("He doesn't want to change his \(initializedDictionary[index1!].key).")
print("His name is \(initializedDictionary[index1!].value).")
initializedDictionary["name"] = "Roy"
initializedDictionary
print("His name is \(initializedDictionary[index1!].value).")

//let countryCodes = ["BR": "Brazil", "GH": "Ghana", "JP": "Japan"]
//let index = countryCodes.index(forKey: "JP")
//
//print("Country code for \(countryCodes[index!].value): '\(countryCodes[index!].key)'.")
//// Prints "Country code for Japan: 'JP'."

//Mark: - Set
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)
integerSet

integerSet.contains(99)
integerSet.contains(98)
integerSet.remove(99)
integerSet

integerSet.removeFirst()
integerSet.removeAll()
integerSet.insert(99)
integerSet
integerSet.count
var stringSet: Set<String> = Set<String>()
stringSet.insert("one")
stringSet.insert("Two")
stringSet.insert("three")
stringSet.insert("four")
stringSet.insert("five")
stringSet
//stringSet.removeFirst()
stringSet.count
stringSet.contains("four")
stringSet.contains("six")
stringSet.sorted()
print(stringSet)

var alphabetSetA: Set<Character> = Set<Character>()
alphabetSetA.insert("A")
alphabetSetA.insert("B")
alphabetSetA.insert("D")
alphabetSetA.insert("F")
alphabetSetA.insert("C")
print(alphabetSetA.sorted())

var alphabetSetB: Set<Character> = Set<Character>()
alphabetSetB.insert("Z")
alphabetSetB.insert("B")
alphabetSetB.insert("C")
alphabetSetB.insert("H")
alphabetSetB.insert("O")
print(alphabetSetB.sorted())

//var alphA: [Character] = []
//for alphabet in alphabetSetA {
//    alphA += alphabet
//}
//

let setA: Set<Int> = [1,2,3,4,5]
let setB: Set<Int> = [3,4,5,6,7]

let union = setA.union(setB)
let intersection = setA.intersection(setB)
let subtraction = setA.subtracting(setB)
let subtraction1 = setB.subtracting(setA)
















