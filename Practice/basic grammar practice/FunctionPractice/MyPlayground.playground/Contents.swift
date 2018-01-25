//: Playground - noun: a place where people can play

import UIKit

//<기초>
//1-a 이름(문자열)을 받아서 이름을 출력하는 함수
func printName(name:String)
{
    print(name)
}
printName(name: "YH")


func printName(_ name: String) -> String
{
    return(name)
}
print(printName("Kim"))


func printName1(name: String)
{
    print("My name is \(name)")
}
printName1(name: "Kim.")

//1-b 나이*(정수)를 받아서 나이를 출력하는 함수
func printAge(age:Int)
{
    print(age)
}
printAge(age: 38)

func printAge1(age: Int) -> Int{
    return(age)
}
print(printAge1(age: 38))



//1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
func printSelfIntroduction(name: String, address: String){
    print("My name is \(name) and I live in \(address).")
}
printSelfIntroduction(name: "Kim", address: "Seojong City")

func printSelfIntroduction1(name: String, address: String) -> (String){
    return("My name is \(name) and I live in \(address).")
}
print(printSelfIntroduction1(name: "Kim", address: "Seoul"))


//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수 (1/2는 0.5인데 왜 return값 타입을 Double로 안되지?)
func divideNum(num:Int) -> Double{
    return Double(num)/3
}
divideNum(num: 2)

func divideNum1(num: Double){
    print(num/3)
}
print(divideNum1(num: 2))

//정수를 하나 입력받아서 제곱을 반환해주는 함수
func squareNum(num: Int) -> Int {
    return num * num
}
print(squareNum(num: 5))

func squareNum1(num: Int){
    print(num * num)
}
squareNum1(num: 3)

//<응용 - 다중 입력, 반환>
//2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수
func addNum(num1: Int, num2: Int) {
    print(num1 + num2)
}
print(addNum(num1: 3, num2: 5))

func addNum1(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
print(addNum1(num1: 4, num2: 6))


//2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수
func minusNum(num1: Int, num2: Int) -> Int {
    return num1 - num2
}
print(minusNum(num1: 3, num2: 5))

func minusNum1(num1: Int, num2: Int) {
    print(num1 - num2)
}
print(minusNum1(num1: 5, num2: 3))

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
func ageGap(age1:Int, age2:Int) -> String{
    return ("My mother is \(age1) years old and I am \(age2) years old, so the gap between us is \(age1 - age2).")
}
print(ageGap(age1: 69, age2: 38))

//시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수
func averageExamSocre(math: Int, kor: Int, eng: Int, tech: Int) -> Double {
    let totalScore: Double = Double(math + kor + eng + tech)
    let average: Double = Double(totalScore)/4
    return average
}
print(averageExamSocre(math: 90, kor: 85, eng: 100, tech: 70))

//<캐스팅>
//정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수
func mutatingIntToDouble (num:Int) {
    print(Double(num))
}
print(mutatingIntToDouble(num: 3))

func mutatingIntToDouble1 (num:Int) -> Double {
    return Double(num)
}
print(mutatingIntToDouble1(num: 4))

//정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)
func addNumToString (num1: Int, num2: Int) -> String {
    let a = String(num1)
    let b = String(num2)
    return String(a + b)
}
print(addNumToString(num1: 3, num2: 5))

func addNumToString1 (num1: Int, num2: Int) {
    let a = String(num1)
    let b = String(num2)
    print(String(a + b))
}
print(addNumToString1(num1: 4, num2: 6))

//실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수
func roundUp(number:Double) -> Int{
    return Int(number + 0.5)
}
print(roundUp(number: 5.5))





