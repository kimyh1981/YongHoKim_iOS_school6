//: Playground - noun: a place where people can play

import UIKit

let age = 18
var result: String = age > 19 ? "성년" : "미성년"

func gradeScore(of score: Int){
    if (score <= 100 && score >= 95)
    {
        print("A")
    }else if (score >= 90 && score < 95)
    {
        print("B")
    }else if (score >= 85 && score < 90)
    {
        print("B+")
    }else if (score >= 80 && score < 85)
    {
        print("B")
    }else{
        print("F")
    }
}
gradeScore(of: 80)

//if-else 문
//1. 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할 시 0을 반환한다.)
func multipleNum(num1: Int, num2: Int) -> Double {
    let result = Double(num1) / Double(num2)
    if num2 != 0 {
        return result
    }else{
        return 0
    }
}
multipleNum(num1: 3, num2: 9)


//2. 정수를 하나 입력받아 그 수가 짝수이면 true를  반환하는 함수
func checkOddNum (num: Int) {
    if num%2 == 0 {
        print(true)
    }else{
        print(false)
    }
}
checkOddNum(num: 6)

//3. 문자열 두개를 입력받아 두 문자열이 같으면 true를 반환해주는 함수
func checkWord(word1: String, word2: String) {
    if word1 == word2 {
        print("true")
    }else {
        print("false")
    }
}
print(checkWord(word1: "World", word2: "world"))

//두 수를 입력받아 큰 수를 반환하는 함수를 작성하세요.
func returnBiggerNum(num1: Int, num2: Int) {
    if 
}

////정수를 하나 입력받아 3의 배수이면 true를 반환해주는 함수
//func checkDoubleOfThree(Num:Int){
//    if(Num%3 == 0){
//        print("true")
//    }else{
//        print("false")
//    }
//}
//checkDoubleOfThree(Num:7)
//
//// 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수 (첫번째 값을 두번째 값으로 나눈다. 0으로 나누기를 할시 0을 반환)
//func checkDivideNum(Num1:Int, Num2:Int) -> Double{
//    if (Num2 == 0)
//    {
//        return 0
//    }else{
//        return Double(Num1)/Double(Num2)
//    }
//}
//print(checkDivideNum(Num1: 2, Num2: 4))
//
////응용
////시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")
////grade 함수 사용 가능
//func gradeScore(score:Int){
//    if score <= 100 {
//        if (score >= 95){
//            print("A")
//        }
//        if (score >= 90){
//            print("B")
//        }
//        if (score >= 85){
//            print("C")
//        }
//        if (score >= 80){
//            print("D")
//        }else{
//            print("F")
//        }
//    }
//    if (score > 100){
//        print("Go to hospital and take some medicine.")
//    }
//}
//gradeScore(score:83)
//
////여러개의 grade를 입력받아서 grade의 평균을 반환해주는 함수
////func averageGrade(of grade1:String, ) -> Double{
////    var point: Double = 0.0
////    if grade == "A+"{
////        point = 4.5
////    }else if grade == "A"{
////        point = 4.0
////    }else if grade == "B+"{
////        point = 3.5
////    }else if grade == "B"{
////        point = 3.0
////    }else if grade == "C+"{
////        point = 2.5
////    }
////    return point
////
//
////}
////윤년 구하기 문제(년도를 받아서 윤년인지 아닌지 판단하는 함수)
//func checkLeapYear (year:Int){
//    if year%4 == 0 || year%400 == 0{
//        print("Leap Year")
//    }else{
//        print("Normal Year")
//    }
//}
//checkLeapYear(year: 2018)
//
//////세 수를 입력받아 그 곱이 양수이면 true, 0 혹은 음수이면 false, 둘 다 아니면 에러를 발생시키는 함수를 작성하세요.
////func checkPlusNum(num1:Int, num2:Int, num3:Int){
////    if num1 * num2 * num > 0 {
////
////    }
////
////
////
////
////
////}
//
//func test(num:Int) -> Int{
//    var sum: Int = 0
//    if num == 1{
//        return 1
//    }else{
//        sum = num + test(num-1)
//        return sum}
//    }
//}
//test(num: 5)
