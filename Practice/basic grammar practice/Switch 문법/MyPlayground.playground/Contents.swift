//: Playground - noun: a place where people can play

import UIKit
//1. Switch 이용하여 grade 구하기
func scoreSwitch(score:Int) -> String{
    var grade: String
    switch score {
    case 95...100:
        grade = "A"
    case 90...94:
        grade = "B"
    case 85...89:
        grade = "C"
    case 80...84:
        grade = "D"
    default:
        grade = "F"
    }
    return grade
}
print(scoreSwitch(score: 50))


//2. Switch + tuple 넓이 구하는 함수
func area(width:Double, height:Double, radian: Double) -> Double{
    var area: Double = 0.0
    let tupleValue = (width, height, radian)
    
    switch tupleValue {
    case (let x, let y, 0):
        area = x * y
    case (let x, let y, let r):
        area = 3.14 * r * r
    default:
        area = 0
    }
    return area
}
//1. Square
print(area(width: 10, height: 10, radian: 0))
//2. Rectangle
print(area(width: 10, height: 15, radian: 0))
//3. Circle
print(area(width: 0, height: 0, radian: 5))


//3. switch-case
//3-1. 월을 입력받아 해당월의 이름을 반환해주는 함수 (ex: 1 >>> "Jan", 12 >>> "Dec", 13 >> "Error"
func changeMonthNumToEng(MonthNum:Int) -> String{
    var changeMonth:String = String(MonthNum)
    switch changeMonth {
    case "1":
        changeMonth = "Jan"
    case "2":
        changeMonth = "Feb"
    case "3":
        changeMonth = "Mar"
    case "4":
        changeMonth = "Apr"
    case "5":
        changeMonth = "May"
    case "6":
        changeMonth = "Jun"
    case "7":
        changeMonth = "Jul"
    case "8":
        changeMonth = "Aug"
    case "9":
        changeMonth = "Sep"
    case "10":
        changeMonth = "Oct"
    case "11":
        changeMonth = "Nov"
    case "12":
        changeMonth = "Dec"
    default:
        changeMonth = "error"
    }
    return changeMonth
}
print(changeMonthNumToEng(MonthNum: 12))

//3-2. 월의 마지막 날을 구하는 함수
//윤년은 4년 마다 오며, 100년마다는 아니나, 400년 마다는 윤년임.
//year%4 == 0 >> 4년으로 나누어 떨어지는 해
//year%100 == 0 > 100년으로 나누어 떨어지는 해
//year%400 == 0 >> 400년으로 나누어 떨어지는 해
func isLeapYear(_ year:Int) -> Bool{
    if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0){
        return true
    }else
    {
        return false
    }
}

//3-2. 년/월을 입력받아 해당 달의 마지막 날을 반환 해주는 함수(윤년 고려)
//윤년 4 & 400년으로 나눠서 떨어져야 함
//윤달은 4년에 한번 옴 (29일 있는 달이 윤달임/2016년이 윤달이었음)
// 1,3,5,7,8,10,12월은 31일씩 나머지는 30일
/// - Parameters:
///   - month: 구하려는 달
///   - year: 2월일 경우 윤년의 계산을 위해 필요한 데이터
/// - Returns: 마지막 날
func lastDate(of month:Int, year:Int) -> Int{
    switch month {
    case 1,3,5,7,8,10,12:
        return 31
    case 4,6,9,11:
        return 30
    case 2:
        if isLeapYear(year){
            return 29
        }else
        {
            return 28
        }
    default:
        return 31
    }
}
lastDate(of: 5, year: 2002)


//여러개의 grade를 입력받아서 grade의 평균을 구해 주는 함수
func average(of aGrade:String, and bGrade:String, then cGrade:String) -> Double{
    let sumPoint = point(of: aGrade) + point(of: bGrade) +  point(of: cGrade)
    let averagePoint = sumPoint / 3
    
    return averagePoint
}

func point(of grade:String) -> Double{
    switch grade {
    case "A+":
        return 3.5
    case "A":
        return 3.0
    case "B+":
        return 2.5
    case "B":
        return 2.0
    default:
        return 1
    }
    
}

//4. if문 변환
//4-1. 시험점수를 입력받아 대학교 grade로 나눠서 반환해주는 함수 (ex: 95 >>> "A+"  /// 80 >>> "B")
func changeScoreToGrade (Score:Double) -> String{
    var changeScore:String = String(Score)
    switch Score {
    case 4.5:
        changeScore = "A+"
    case 4.0...4.4:
        changeScore = "A"
    case 3.5...3.9:
        changeScore = "B+"
    case 3.0...3.4:
        changeScore = "B"
    case 2.5...2.9:
        changeScore = "C"
    default:
        changeScore = "F"
    }
    return changeScore
}
print(changeScoreToGrade(Score: 4.0))

//4-2. 도형 부피 구하기 함수


//4-3. 도형 넓이 구하기 함수


//where문

