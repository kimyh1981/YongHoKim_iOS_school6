//Welcome to A Swift Tour

import UIKit

print("Hello, Swift world! It's awsome and amazing. Now world begins to me.")

//1. Simple Values : let(to make constant) & var(to make variable)
///extract from : <https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1>
var myVariable = 42
myVariable = 50
let myConstant = 42
let implicitInteger = 70
let implicitdDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 37.1
//Tip : When a constant or variable is created, it is provided with a value so that the compiler infer its type. ex)An initial value of myVariable was an integer in the example above. Or provide enough information to specify the type in written.
//to make an instance of a desired type.
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
//simple way to include values in strings.
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) of apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
//to use three double quotation marks(""")for strings that take up multiple lines.
let quotation = """
I said "I have \(apples) of apples."
And then I said "I have \(apples + oranges) pieces of fruit."
But suddenly I decided not offering my quotation at this time.
"""
//to create arrays and dictionaries using backets([]) and access their elements by writing the index or key in brackets.
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
//to create an empty array or dictionary, use the initializer syntax.
let emptyArray = [String]()
//let emptyDictionary = [String: Float]
//If type information can be inferred, you can write an empty array as [] and an empty dictionary as [:] -for example, when you set a new value for a variable or pass an argument to a function.
shoppingList = []
occupations = [:]

//2. Control Flow
//Use if and Switch to make conditionals, and use for-in, while, and repeat-while to make loops. Parentheses around the condition or loop variable are optional. Brace around the body are required.
let individualScore = [8, 7, 4, 3, 2]
var teamScore = 0
for score in individualScore {
    if score > 5 {
        teamScore += 3
    }else{
        teamScore -= 1
    }
}
print(teamScore)
//Optionals : when values might be missing, those values are represented as optionals. An optional value either contains a value or contatins nil to indicate that a value is missing. Use question mark(?).
var optionalSring: String? = "hey"
print(optionalSring == nil)

var optionalName: String? = nil
var greeting = "hi"
if let name = optionalName{
    greeting = "Hello, \(name)"
}else{
    greeting = "Bye"
}
//another way to handle optional values is to provide a default value using the ?? operator. If the optional value is missing, the default value is used instead.
let nickName: String = "KYH"
let fullName: String? = "Kim Yong Ho"
let formalGreeting = "Hello, \(fullName ?? nickName)"
//Switchs support any kind of data and a wide variety of comparison operations-they aren't limited to integers and tests for equality.
let vegetable = "red pepper"
switch vegetable {
case "상추":
    print("This is not spicy.")
case "배추":
    print("This is an ingredient of KimChi.")
case let x where x.hasSuffix("pepper"):
    print("\(x) is so spicy.")
default:
    print("I don't like a vegetable.")
}
//to use for-in with dictionaries.
let randomNum = [
    "Num1": [1,2,3,4,5],
    "Num2": [1,2,3,4,5],
    "Num3": [1,2,3,4,5],
]
var largestNum = 0
for (_, numbers) in randomNum{
    for number in numbers{
        if number > largestNum{
            largestNum = number
        }
    }
}
print(largestNum)
//Use "while" to repeat a block of code until a condition changes. The condition of a loop can be at the end instead, ensuring that the loop is run at least once.
var n = 2
while n < 100{
    n *= 2
}
print(n)
// Use "..<" to make a range that omits its upper value, and use "..." to make a range that includes both values.
var total = 0
for i in 0..<11{
    total += i
}
print(total)
//3. Functions and Closures
//Use func to declare a function. Call a function by following its name with a list of arguments in parentheses. Use -> to separate the parameter names and types form the function's return type.
func greeting(person: String, day: String) -> String{
    return "Hello \(person), today is \(day)."
}
greeting(person: "Kim", day: "Sunday")
//By default, functions use their parameter names as labels for their arguments. Write a custom argument label before the parameter name, or write _ to use no argument label.
func greet(_ person: String, _ day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greeting(person: "kim", day: "Modany"))
//Use a tuple to make a compund value-for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number.
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score < min{
            min = score
        }else if score > max{
            max = score
        }
        sum += score
    }
    return(min, max, sum)
}
let statistics = calculateStatistics(scores: [0,1,2,3,4,5,6,6,7,-1])
print(statistics.sum)
print(statistics.0)
