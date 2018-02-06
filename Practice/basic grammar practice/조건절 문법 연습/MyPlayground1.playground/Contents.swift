//: Playground - noun: a place where people can play

import UIKit

//var index = 0;
//while index < 10 {
//    print("현재 횟수는 \(index)입니다.")
//    index += 1
//}
//
//func timeTable (_ times: Int) {
//    print("\(times)단")
//    var count: Int = 1
//    while count < 10 {
//        print("\(times) * \(count) = \(times * count)")
//        count += 1
//    }
//}
//timeTable(7)
//
//let numbers = [1,2,3,4,5,6,7,8,9,10]
//for number in numbers {
//    print("\(number)")
//}
//
//for index in 1...9 {
//    print("\(index) times 5 is \(index * 5)")
//}

func arrayTest() {
    var list: [String] = ["my", "name", "is", "a", "Kim", "YongHo"]
    list.append("입니다.")
    print("list배열의 총 갯수는", list.count)
    print(list[3])
    list.remove(at: 3)
    list.insert("Let me introduce my self.", at: 0)

    for text in list {
        print(text)
    }
}
arrayTest()
