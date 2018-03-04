//: Playground - noun: a place where people can play

import UIKit

//Mark: - 정의
//enum은 타입이므로 대문자 카멜케이스를 사용하여 이름을 정의
//각 case는 소문자 카멜케이스로 정의
//각 case는 그 차체가 고유값이다

enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}

var day: Weekday = Weekday.sun
day = .fri
day = .sat

switch day {
case Weekday.mon:
    print("Hell opens.")
case .tue, .wed, .thu:
    print("Keep working like a slave.")
case .fri:
    print("Wow thanks god! It's friday.")
case .sat, .sun:
    print("sleeping whole day fuck.")
}

enum Fruit: Int {
    case apple = 0
    case grape = 1
    case mango
    case banana
    case orange
    case guagwa
}
print(Fruit.mango.rawValue)
print(Fruit.guagwa.rawValue)

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}
print(School.elementary.rawValue)
print(School.high.rawValue)
print(School.university.rawValue)

//Mark: 원시값을 통한 초기화
//rawValue를 통해 초기화 할 수 있다
//rawValue를 case에 해당하지 않을수 있으므로
//초기화는 옵셔널이어야 한다.

let apple: Fruit? = Fruit(rawValue: 0)
if let waterMelon: Fruit = Fruit(rawValue: 6) {
    print("rawValue 6에 해당하는 케이스는 \(waterMelon)입니다.")
} else {
    print("rawValue 6에 해당하는 케이스가 없습니다.")
}

//Mark: 메서드
enum Month {
    case dec, jan, feb
    case mar, apr, may
    case jun, jul, aug
    case sep, oct, nov
    
    func printMessage() {
        switch self {
        case .dec, .jan, .feb:
            print("cold")
        case .mar, .apr, .may:
            print("warm")
        case .jun, .jul, .aug:
            print("hot")
        default:
            print("not cold and not hot")
        }
    }
}
Month.apr.printMessage()
Month.jul.printMessage()










