//: Playground - noun: a place where people can play

import UIKit
/*
스위프트의 모든 인스턴스는 초기화와 동시에 모든 프로퍼티에 유효한 값이 할당되어 있어야 한다.
 프로퍼티에 미리 기본값을 할당해 두면, 인스턴스가 생성됨과 동시에 초기값을 지니게 됨.
 */

//class Person {
//    var name: String
//    var age: Int
//    var nickName: String
//}
//
//let jason: Person = Person()
//jason.name = "Jason"
//jason.age = 18
//jason.nickName = "Joe"

class PersonA {
    var name: String = ""
    var age: Int = 0
    var nickName: String = ""
}

let Jason: PersonA = PersonA()
Jason.name = "Jason"
Jason.age = 18
Jason.nickName = "Joe"


//Mark: - 이니셜라이저
/*
 프로퍼티 기본값을 지정하기 어려운 경우에는 이니셜라이저를 통해
 인스턴스가 가져야 할 초기값을 전달 할 수 있음.
 */

class PersonB {
    var name: String
    var age: Int
    var nickName: String
    
    //이니셜라이저
    init(name: String, age: Int, nickName: String) {
        self.name = name
        self.age = age
        self.nickName = nickName
    }
}
let Ashely: PersonB = PersonB(name: "Ashely", age: 19, nickName: "Star")

class PersonC {
    var name: String?
    var age: Int
    var nickName: String?
    
    convenience init(name: String, age: Int, nickName: String) {
        self.init(name: name, age: age)
        self.nickName = nickName
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let jenny: PersonC = PersonC(name: "Jenny", age: 20, nickName: "Jane")
var john: PersonC! = PersonC(name: "Johan", age: 39)

//암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하지만 초기값을 할당하지 않고자 할 때 사용

class Puppy {
    var name: String
    var owner: PersonC!
    
    init(name: String) {
        self.name = name
    }
    func goOut() {
        print("\(name)은 주인 \(owner.name)와 산책을 갑니다.")
    }
}

let happy: Puppy = Puppy(name: "Happy")
happy.owner = jenny
happy.goOut()

//Mark: - 실패가능한 이니셜라이저
/*
 이니셜라이져 매개변수로 전달되는 초기값이 잘못된 경우, 인스턴스 생성에 실패할 수 있습니다.
 인스턴스 생성에 실패하면 nil을 반환합니다.
 그래서 실패 가능한 이니셜라이져의 반환타입은 옵셔널 타입입니다.
 */

class PersonD {
    var name: String
    var age: Int
    var nickName: String?
    
    init?(name: String, age: Int) {
        if name.characters.count == 0 {
            return nil
        }
        if (0...120).contains(age) == false {
            return nil
        }
        self.name = name
        self.age = age
    }
}

//let johnson: PersonD = PersonD(name: "Johnson", age: 30)!
let sohee: PersonD? = PersonD(name: "john", age: 23)
let jina: PersonD? = PersonD(name: "jina", age: 125)
let jinhee: PersonD? = PersonD(name: "", age: 10)
print(jina)
print(jinhee)

//Mark: - deinit
/*
 deinit은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출되며, 인스턴스가 해제되는 시점에 해야할 일을 구현 할 수 있음.
 */

class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC){
        self.name = name
        self.child = child
    }
    
    deinit {
        if let petName = pet?.name {
            print("\(name)가 \(child.name)에게 \(petName)을/를 인도합니다.")
//            self.pet?.owner = child??
        }
    }
}

var dookie: PersonE? = PersonE(name: "Dookie", child: john)
dookie?.pet = happy
//dookie = nil //dookie인스턴스가 더이상 필요없으므로 메모리에서 삭제됨.
john = nil
