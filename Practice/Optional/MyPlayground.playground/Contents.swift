//Optional Type

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
if convertedNumber != nil {
    print("converted number is \(convertedNumber!)l")
}

//Optional Binding
if let actualNumber = convertedNumber {
    print("actual number is \(actualNumber).")
}else{
    print("actual number does not exist.")
}
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("first number is \(firstNumber), second number is \(secondNumber).")
}

//Optional Chaining : 하나라도 ?가 있다면 옵셔널 체이닝임
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()
//john.residence = Residence()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room.")
}else {
    print("Unable to retrieve the number of rooms.")
}

//
//if let firstNumber = Int("4") {
//    if let secondNumber = Int("42") {
//        if firstNumber < secondNumber && secondNumber < 100 {
//            print("first number is \(firstNumber), second number is \(secondNumber)")
//        }
//    }
//}


