//: Playground - noun: a place where people can play

import UIKit
//Mark : - 구조체

//Mark : 프로퍼티 및 메서드
struct Sample {
    var mutableProperty: Int = 100 //가변 프로퍼티
    let immutableProperty: Int = 100 //불변 프로퍼티
    static var typeProperty: Int = 100 //타입 프로퍼티(static을 붙여줌)
    
    //인스턴스 메서드
    func instanceMethod() {
        print("instanceMethod")
    }
    
    //타입 메서드 (static을 붙여줌)
    static func typeMethod() {
        print("typeMethod")
    }
}

//Mark: 구조체 사용
//가변 인스턴스
var mutable: Sample = Sample()
mutable.mutableProperty = 150
//mutable.immutableProperty = 200

let immutable: Sample = Sample()
//mutable.immutableProperty = 2000

Sample.typeProperty = 350

