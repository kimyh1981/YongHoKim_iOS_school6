//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Class & Structure

//deinit(인스턴스의 소멸 예시)
class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
    
    deinit {
        print("Person instance of this class will be gone.")
    }
}
var Kim: Person? = Person()
Kim = nil

//구조체와 클래스의 차이
//1. 값을 저장하기 위해 프로퍼티를 정의 할 수 있습니다.
//2. 기능 수행을 위해 메서드를 정의할 수 있습니다.
//3. 서브스크립트 문법을 통해 구조체 또는 클래스가 가지는 값(프로퍼티)에 접근하도록 서브스크립트를 정의할 수 있습니다.
//4. 초기화될 때의 상태를 지정하기 위해 이니셜라이저를 정의할 수 있습니ㅏㄷ.
//5. 초기구현과 더불어 새로운 기능 추가를 위해 익스텐션을 통해 확장할 수 있습니다.
//6. 특정 기능을 수행하기 위해 특정 프로토콜을 준수 할 수 있습니다.

//값 타입(struct)의 차이
struct BasicInformation {
    let name: String
    var age: Int = 200
}

var kimInfo: BasicInformation = BasicInformation(name: "kim", age: 100)
kimInfo.age = 99

var friendInfo: BasicInformation = kimInfo

print("kim's age: \(kimInfo.age)")
print("friend's age: \(friendInfo.age)")

friendInfo.age = 999

print("kim's age: \(kimInfo.age)")
print("friend's age: \(friendInfo.age)")

//참조 타입(class)과
class Person1 {
    var height: Float = 175.0
    var weight: Float = 0.0
}

var kim: Person1 = Person1()
kim.height = 190.0
var friend: Person1 = kim

print("kim's height: \(kim.height)")
print("friend's height: \(friend.height)")

friend.height = 185.5

print("kim's height: \(kim.height)")
print("friend's height: \(friend.height)")

func changeBasicInfo(_ info: BasicInformation) {
    var copiedInfo: BasicInformation = info
    copiedInfo.age = 1
}

func changePersonInfo(_ info: Person1) {
    info.height = 155.3
}

changeBasicInfo(kimInfo)
print("kim's age: \(kimInfo.age)")
print("firend's age: \(friendInfo.age)")

changePersonInfo(kim)
print("kim's height: \(kim.height)")





