var evenNumbers: [Int] = [2, 4, 6, 8]

//let evenNumbers2: Array<Int> = [2, 4, 6, 8]

evenNumbers.append(10)
evenNumbers += [12, 14, 16]

print(evenNumbers)
//evenNumbers = []
print(evenNumbers.isEmpty)
print(evenNumbers.count)
if let first = evenNumbers.first, let last = evenNumbers.last {
    print(first, last)
} else {
    print("Empty arry")
}

if let min = evenNumbers.min() {
    print(min)
}

print(evenNumbers.sorted())

evenNumbers = evenNumbers.sorted()
var firstElement = evenNumbers[0]
print("The first element is : \(firstElement)")
var secondElement = evenNumbers[1]
print("The second element is : \(secondElement)")

let firstThreeElements = evenNumbers[0...2]
print(firstThreeElements)

evenNumbers.contains(3)
evenNumbers.contains(4)
evenNumbers.contains(10)

evenNumbers.insert(0, at: 0)

var removedElement = evenNumbers.removeLast()
var removedZero = evenNumbers.remove(at: 0)
print(evenNumbers)

evenNumbers[0] = -2
print(evenNumbers)
print("============================")
evenNumbers[0...2] = [-2, 0, 2, 4, 6]
print(evenNumbers)

let remove = evenNumbers.remove(at: 1)
let remove2 = evenNumbers.remove(at: 0)
evenNumbers.insert(remove, at: 0)
print(evenNumbers)

print("*****************************")

for evenNumber in evenNumbers {
    print(evenNumber)
}

for (index, evenNumber) in evenNumbers.enumerated() {
    print(index, evenNumber)
}

let firstThreeRemoved = evenNumbers.dropFirst(3)
print(firstThreeRemoved)

let lastRemoved = firstThreeRemoved.dropLast()
print(lastRemoved)

let firstThree = evenNumbers.prefix(3)
let lastOne = evenNumbers.suffix(1)
print(lastOne)






















































































