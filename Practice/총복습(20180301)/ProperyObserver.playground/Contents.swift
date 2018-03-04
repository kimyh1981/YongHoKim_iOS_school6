//: Playground - noun: a place where people can play

import UIKit

struct Money {
    //프로퍼티 감시자 사용
    var currencyRate: Double = 1100 {
        willSet(newRate) {
            print("환율이 \(currencyRate)에서 \(newRate)로 변경될 예정입니다.")
        }
        
        didSet(oldRate) {
            print("환율이 \(oldRate)에서 \(currencyRate)로 변경되었습니다.")
        }
    }
    //프로퍼티 감시자 사용
    var dollar: Double = 0 {
        //willSet의 암시적 매개변수 이름 newValue
        willSet {
            print("\(dollar)달러에서 \(newValue)달러로 변경될 예정입니다.")
        }
        //didSet의 암시적 매개변수 이름 oldValue
        didSet {
            print("\(oldValue)달러에서 \(dollar)달러로 변경되었습니다.")
        }
    }
    //연산 프로퍼티
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
            /* 프로퍼티 감시자와 연산 프로퍼티 기능은 동시에 사용할 수 없습니다.
             willSet {
             }
             */
        }
    }
}

//Mark: - 사용

var moneyInMyPockey: Money = Money()
moneyInMyPockey.currencyRate = 1150

moneyInMyPockey.dollar = 10

print(moneyInMyPockey.won)

//프로퍼티 감시자의 기능은
//함수, 메서드, 클로저, 타입 등의 외부에 위치한
//지역/전역 변수에도 모두 사용 가능합니다. --> 정확한 구분과 의미가 햇갈린다.
var a: Int = 100 {
    willSet {
        print("\(a)에서 \(newValue)로 변경될 예정입니다.")
    }
    didSet {
        print("\(oldValue)에서 \(a)로 변경 되었습니다.")
    }
}
a = 300

