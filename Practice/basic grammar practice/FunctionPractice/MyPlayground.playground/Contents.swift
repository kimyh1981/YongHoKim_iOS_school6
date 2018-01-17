//: Playground - noun: a place where people can play

import UIKit

//<기초>
//1-a 이름(문자열)을 받아서 이름을 출력하는 함수
func printName(name:String){
    print(name)
}
printName(name:"YongHo")
var name = "YongHo"
print (name)


func printName() -> String{
    return "name"
}
func printName(name1:String = "YongHo"){
    print("My name is \(name1)")
}
//1-b 나이*(정수)를 받아서 나이를 출력하는 함수
func printAge(age:Int){
    print(age)
}
//1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
func printSelfIntroduction(name:String, address:String){
    print("My name is \(name) and I live in \(address)")
}
//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수 (1/2는 0.5인데 왜 return값 타입을 Double로 안되지?)
func divideNum(num:Int) -> Double{
    return Double(num)/2
}
//정수를 하나 입력받아서 제곱을 반환해주는 함수
func squareNum(num:Int) -> Int{
    return num * num
}


//<응용 - 다중 입력, 반환>
//2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
func addNum(num1:Int, num2:Int) -> Int{
    return num1 + num2
}
//2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수
func minusNum(num1:Int, num2:Int) -> Int{
    return num1 - num2
}
//2-c. 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수
    func multipleNum(num1:Int, num2:Int) -> Int{
        return num1 * num2
}
//2-d. 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수
    func divideNum(num1:Int, num2:Int) -> Double{
        return Double(num1 / num2)
}

//<응용>
//부모님과 내 나이를 입력 후 그 나이차를 프린드 하는 함수 (ex: "어머니의 나이는 40세이고 내 나이는 20살이므로 우리의 나이차이는 20살 입니다.)
func ageGap(age1:Int, age2:Int) -> Int{
    print("My mother \(age1) years old and I am my \(age2) years old, so the gap between us is (\(age1) - \(age2)")
}
//시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수
func averageExamScore(math:Int, eng:Int, kor:Int, science:Int) -> Double{
    let totalScore:Int = math + eng + kor + science
    let average:Double = Double(totalScore)/4
    return average
    
}

//<캐스팅>
//정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수

//정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)
func comineInt(num1:Int, num2:Int) -> String{
    return String(num1) + String(num2)
}
//실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수
func roundUp(number:Double) -> Int{
    let addhHalfNum = number + 0.5
    return Int(addhHalfNum)
}






