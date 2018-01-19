//: Playground - noun: a place where people can play

import UIKit
//Array 방식
func arrayTest(){
    var list:[String] = ["iphone3GS", "iphone4", "", "iphone5", "iphone6Plus", "iphoneSE", "iphone7"]
    list.append("iphone8")
    print("How the number of elements in the list is", list.count)
    print(list[3])
    list.remove(at:3)
    list.insert("iphoneX", at:7)
    
    for text in list{
        print(text)
    }
//    if list.isEmpty {
//        return true
//    }else{
//        return false
//    }
}
arrayTest()

//Set 방식
func setTest(){
    let oddCharacter: Set = ["a","c","e","g","i"]
    let evenCharacter: Set = ["b","d","f","h"]
    let primeCharacter: Set = ["b","c","e","g"]
    
    print("test=====")
    let intersectList = oddCharacter.intersection(evenCharacter)
    print(intersectList)
    let differeceList = oddCharacter.symmetricDifference(primeCharacter).sorted()
    print(differeceList)
    let unionList = oddCharacter.union(evenCharacter).sorted()
    print(unionList)
    let substractList = oddCharacter.subtracting(primeCharacter).sorted()
    print(substractList)
}
setTest()


////Down casting "as"
//func downcastingtest {
//    var person:[String:Any] = ["name":"YH, "age":20,
//}


func dicTest(){
    //기본 딕셔너리
    var dic:[String:Any] = ["name":"yh", "age":20, "job":"Developer", "isSingle":true]
    //딕셔너리 추가
    dic.updateValue("Seojong", forKey: "address")
    //딕셔너리 수정
    dic.updateValue("Kim", forKey: "name")
    //삭제
    dic.removeValue(forKey: "isSingle")
    
    //값 불러오기
    let introduce: String = "my name" + " is" + (dic["name"] as! String)
    
    let doubleage = (dic["age"] as! Int) * 2
    for (key,value) in dic {
        print("key값은\(key)이고","value값은\(value)이다")
    }
}
print(dicTest())

//배열

//Level 1
//시작과 끝수를 받아서 두 수 사이의 모든 수를 가지고 있는 배열 만들기
func makelist(startNum:Int, endNum:Int) -> [Int]{
    var returnList: [Int] = []
    for n in startNum...endNum{
        returnList.append(n)
    }
    return returnList
}
print(makelist(startNum: 1, endNum: 10))

//정수 타입의 배열을 입력받아 모든 배열의 수의 합을 리턴하는 함수
var list: [Int] = [1,3,5,7,9]
func sumAllList(numlist: [Int]) -> Int{
    var sumList: Int = 0
    for n in numlist{
        sumList += n
    }
    return sumList
}
print(sumAllList(numlist:list))

//딕셔너리에 있는 모든 데이터 출력하는 함수 >> 데이터: ["name":"joo", "age":20, "job":"Developer"]





//Level 2
//정수 타입의 배열을 받아서 배열안의 중복된 수를 모두 제거된 배열을 반환하는 함수
//정수 배열을 입력받아, 배열의 요소 중 두 개를 선택하는 조합을 모두 포함하는 배열을 작성하세요.
//>> [1, 2, 3] -> [[1, 2], [1, 3], [2, 3]]

//Level 3
//정수 타입의 배열을 입력받아서 오름차순으로 정렬된 배열을 만들어 리턴하시오.(정렬 함수 사용x)   (정렬의 효율은 보지 않습니다.)
//>>에라토스테체 알고리즘을 이용하여  입력된 숫자까지의 모든 소수의 배열을 반환하는 함수


