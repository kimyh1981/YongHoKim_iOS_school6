//: Playground - noun: a place where people can play

import UIKit
//반복문 실습
//1-1. 구구단 만들기 (while)
func timesTable0(_ times:Int){
    print("\(times)단")
    var count: Int = 1
    while count < 10
    {
        print("\(times) * \(count) = \(times * count)")
        count += 1
    }
}
timesTable0(2)

//1-1. 구구단 만들기 (for-in)
func timesTable1 (times:Int) {
    print("\(times)단")
//    let numbers = [1,2,3,4,5,6,7,8,9]
    for count in 1...9{
        print("\(times) * \(count) = \(times * count)")

    }
}
timesTable1(times: 3)

//1-2. 삼각수 구하기 : 삼각수란 1부터 모든 수의 합이다 ex)삼각수 10 = 55 (Num을 거꾸로 더해 주는거 시도!)
//메소드 샐힝:triangula(num:10)  //  triangular(num:-1)
//결과 : 55                    //  0
//1+2+3+4+5 >> num + (num+count) + (num+)
func triangular(num:Int) -> Int{
    var tempNum:Int = num
    var resultNum = 0
    while tempNum > 0 {
        resultNum += tempNum
        tempNum -= 1
    }
    return resultNum
}
triangular(num: 5)

//1-3. 각 자리수 더하는 메소드
//메소드 실행:addAll(num:123)   // addAll(num:5792)
//결과 : 6                      // 23
func addAll(num:Int) -> Int{
    var tempNum:Int = num
    var sumNum:Int = 0
    while tempNum > 0 {
        let lastNum:Int = tempNum % 10
        sumNum += lastNum
        tempNum /= 10
    }
    return sumNum
}
addAll(num: 1234)

//1-4. 숫자 리버스 함수
//메소드 실행: revers(num:123)   //reverse(num:321)
//결과: 321
func reverse(num:Int) -> Int{
    var revNum:Int = num
    var resultNum:Int = 0
    while revNum > 0 {
        resultNum = resultNum * 10
        resultNum += revNum % 10
        revNum = revNum / 10
    }
    return resultNum
}
print(reverse(num: 56789))


//1-5. 정수 하나를 받아서 그 수의 팩토리얼을 구하시오.
//3 = 3 * 2 * 1
//5 = 5 * 4 * 3 * 2 * 1
func factorial(num:Int) -> Int {
    var resultNum: Int = 1
    for countNum in 1...num{
        resultNum *= countNum
    }
    return resultNum
}
print(factorial(num: 20))

//1-6. 입력된 수가 짝수라면 2로 나누고, 홀수라면 3을 곱하고 1을 더한 다음, 결과로 나온 수에 같은 작업을 1이 될때까지 반복하는 경우 모든 수가 1이 된다는 추측입니다. 예) 6->3->10->5->16->8->4->2->1
func collatzAssuming(num:Int) -> Int {
    var tempNum = num
    var totalCount = 0
    while tempNum != 1 {
        if tempNum % 2 == 0{
            tempNum /= 2
        }else{
            tempNum = tempNum * 3 + 1
        }
        
        totalCount += 1
        if totalCount >= 500{
            return -1
        }
    }
            return totalCount
}
collatzAssuming(num: 6)

//1-7. 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어 져야 합니다.
//결과 값은 true or false
func harshad(num:Int) -> Bool{
    var tempNum:Int = num
    var sumNum:Int = 0
    while tempNum > 0 {
        let lastNum:Int = tempNum % 10
        sumNum += lastNum
        tempNum /= 10
    }
    if num%sumNum == 0 {
            return true
    }else{
            return false
    }
}
harshad(num: 1234)

func interSwitch(count: Int) {
    let countedThings = "moons orbiting Seturn."
    let naturalCount: String
    switch count {
    case 0:
        naturalCount = "no"
    case 1..<5:
        naturalCount = "a few"
    case 5..<12:
        naturalCount = "several"
    case 12..<100:
        naturalCount = "dozens of"
    case 100..<1000:
        naturalCount = "hundreds of"
    default:
        naturalCount = "many"
    }
    print("There are \(naturalCount) \(countedThings)")
}
interSwitch(count: 4)

func getPoint(somePoint: (Int, Int)) {
    switch somePoint {
    case (0, 0):
        print("\(somePoint) is at the origin.")
    case(let x, 0):
        print("on the x-axis with an x value of \(x)")
    case(0, let y):
        print("on the y-axis with an y value of \(y)")
    case(-2...2, -2...2):
        print("\(somePoint) is inside the box")
    default:
        print("\(somePoint) is outside of the box")
    }
}
getPoint(somePoint: (0, 0))



























