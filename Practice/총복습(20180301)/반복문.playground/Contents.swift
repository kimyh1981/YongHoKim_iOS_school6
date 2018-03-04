//: Playground - noun: a place where people can play

import UIKit

var integers = [1, 2, 3]
let people = ["Kim": 10, "Park": 15, "Lee": 18]

for integer in integers {
    print(integer)
}

for (name, age) in people {
//    print("\(name): \(age)")
//    print(name, age)
}

var ints = [1,2,3,4,5,6,7,8,9]
var evenIntArray:[Int] = []
for num in ints {
    if num % 2 == 0 {
        evenIntArray.append(num)
    }
    print(evenIntArray)
}

var oddIntArry: Array<Int> = []
for num in ints {
    if num % 2 == 1 {
        oddIntArry.append(num)
    }
    print(oddIntArry)
}

var someInt: Int = 10
for someNum in 1...10 {
    if someNum > 0 {
        someInt -= someNum - (someNum - 1)
    }
    print(someInt)
}

var numbers: Array<Int> = [1,2,3,4,5,6,7,8,9,10]
while numbers.count > 1 {
    print(numbers.removeFirst())
//    print(numbers.removeLast())
}
print(numbers)




