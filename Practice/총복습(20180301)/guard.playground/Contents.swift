//: Playground - noun: a place where people can play

import UIKit

//Mark: - early exit
/*
 guard를 사용하여 잘못된 값의 전달시, 특정 실행 구문을 빠르게 종료한다.
 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작을 한다.
 guard의 else블럭 내부에는 특정 코드블럭을 종료하는 지시어(return, break 등)가 꼭 있어야 하며
 타입 캐스팅, 옵셔널과도 자주 사용된다.
 그 외 단순 조건 판단 후 빠르게 종료할 때도 용이하다.
 */

func functionWithGuard(age: Int?) {
    guard let unwrappedAge = age, unwrappedAge < 130, unwrappedAge >= 0 else {
        print("your age is wrong")
        return
    }
        print("Your age is \(unwrappedAge).")
}

functionWithGuard(age: 125)
functionWithGuard(age: -1)
functionWithGuard(age: 111)
functionWithGuard(age: 101)

var count = 10
while true {
    guard count < 11 else {
        break
    }
    count += 1
    print(count)
}

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    print("\(name):\(age)")
}
someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "yagom", "age": 10])
someFunction(info: ["name": "yagom", "age": 99])
