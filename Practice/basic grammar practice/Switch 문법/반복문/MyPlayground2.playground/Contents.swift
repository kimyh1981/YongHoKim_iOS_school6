//: Playground - noun: a place where people can play

import UIKit

//for문 강사님 숙제
//1. 정수 하나를 입력받아서 1부터 입력받은 수까지의 모든 수를 더한값을 반환해주는 함수 (ex: 10 >>> 55)
func addNum(num: Int) -> Int{
    var sumNum: Int = 0
    for n in 1...num{
        sumNum += n
    }
    return sumNum
}
addNum(num: 10)

//2. 정수 두개를 입력받아서 첫번째 수를 두번째 수의 횟수 만큼 곱한 값을 반환해주는 함수 (ex: 2,3 >>> 8 /// 3,3 >>> 27)
func multipleNum(firstNum: Int, secondNum: Int) -> Int {
    var resultNum: Int = 1
    for _ in 1...secondNum{
        resultNum *= firstNum
    }
    return resultNum
}
multipleNum(firstNum: 2, secondNum: 3)

//
////3. 정수를 받아서 각 자리의 합을 반환해주는 함수(ex: 312 >>> 6)
//func addNumEach(num:Int) -> Int{
//    var tempNum: Int = num
//    var sumNum: Int = 0
//    for  in num {
//        let lastNum: Int = tempNum % 10
//        sumNum += lastNum
//        tempNum /= 10
//    }
//    return sumNum
//}
//4. 정수 하나를 받아서 1부터 정수까지의 숫자중 짝수를 모두 출력해주는 함수

//5. 100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수

//6. 정수 하나를 받아서 그 정수의 약수를 출력하는 함수

//7. 2 이상의 정수를 입력받아, 그 수가 소수인지 아닌지를 판별하는 함수

//8. 정수 하나를 입력받아서 입력받은 수 번째 피보나치 수를 반환하는 함수를 작성하세요. (ex: 3 >>> 2, 7 >>> 13)
func fibonacci(num:Int) -> Int{
    var firstNum: Int = 0
    var secondNum: Int = 1
    for _ in 1...num{
        let temp = firstNum + secondNum
        firstNum = secondNum
        secondNum = temp
    }
    return firstNum
}
print(fibonacci(num: 12))
