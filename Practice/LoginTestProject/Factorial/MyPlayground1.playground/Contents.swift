func factorial(number: Int) {
    var result: Int = 1
    var num: Int = number
    for _ in 1...number {
        result *= num
        num -= 1
    }
    print(result)
}
factorial(number: 5)

// 0 1 2 3 4 5 6
func pibonachi(_ n: Int) {
    
}
