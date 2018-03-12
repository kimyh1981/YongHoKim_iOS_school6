//: Playground - noun: a place where people can play

import UIKit

func firstCitizen() {
    print("function call")
}

func function(_ parameter: @escaping ()->()) -> (()->()) {
    return parameter
}

let returnValue = function(firstCitizen)
returnValue()


struct Pet {
    enum PetType {
        case dog, cat, snake, pig, bird
    }
    var type: PetType
    var age: Int
}

let myPet = [
    Pet(type: .dog, age: 13),
    Pet(type: .dog, age: 2),
    Pet(type: .dog, age: 7),
    Pet(type: .cat, age: 9),
    Pet(type: .snake, age: 4),
    Pet(type: .pig, age: 5),
]

func sum() -> Int {
    var sumNum: Int = 0
    for pet in myPet {
        if pet.type == .dog {
            sumNum += pet.age
        }
    }
    return sumNum
}
print(sum())

myPet.filter {
    $0.type == .dog
}

let immutableArray = Array(1...40)
func printIndex() -> [Int] {
    var indexArray: [Int] = []
    for i in immutableArray {
        indexArray.append(i - 1)
    }
    return indexArray
}
print(printIndex())

func printEvenNum() -> [Int] {
    var evenNum: [Int] = []
    for element in immutableArray {
        if element % 2 == 0 {
            evenNum.append(element)
        }
    }
    return evenNum
    
}
print(printEvenNum())

func addAllNum() -> Int {
    var totalNum: Int = 0
    for element in immutableArray {
        totalNum += element
    }
    return totalNum
}
print(addAllNum())



let array = ["1j", "2d", "22", "33"]

let m1 = array.map({ Int($0) })
let f1 = array.flatMap({ Int($0) })

let m2 = array.map({ Int($0) }).first
let f2 = array.flatMap({ Int($0) }).first

print(m1)
print(f1)
print(m2)
print(f2)

protocol Unit {
    func attack()
}
class Marin: Unit {
    func attack() {
        print("마린이 공격을 시작합니다.")
    }
}
class Ghost: Unit {
    func attack() {
        print("고스트가 공격을 시작합니다.")
    }
}
class Medic: Unit {
    func attack() {
        print("메딕은 공격보다는 치료를 우선으로 합니다.")
    }
}
enum UnitType {
    case marin, medic, ghost
}
class Barraks {
    func createUnit(type: UnitType) -> Unit {
        switch type {
        case .marin: return Marin()
        case .medic: return Medic()
        case .ghost: return Ghost()
        }
    }
}
let barraks = Barraks()

print("--------------------")
let unit1 = barraks.createUnit(type: .medic)
unit1.attack()

let unit2 = barraks.createUnit(type: .ghost)
unit2.attack()

let unit3 = barraks.createUnit(type: .marin)
unit3.attack()

let marin = Marin()
marin.attack()
