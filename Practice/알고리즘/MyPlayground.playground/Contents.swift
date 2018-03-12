//: Playground - noun: a place where people can play

import UIKit
func printStars(nums: Int) {
    var star: String = "*"
    for i in 1...nums {
        print(star)
        star += "*"
    }
}
print(printStars(nums: 5))

func doubleForTest(floor: Int) {
    for a in 0...floor {
        print("\(a)")
        for b in 0...floor {
            print("\(b)")
        }
    }
}
print(doubleForTest(floor: 5))

func printStarsAlignedToRight(floors: Int) {
    var blank: String = ""
    var star: String = "*"
    for floor in (1...floors).reversed() {
        for _ in 1...floor {
            blank += " "
        }
        print(blank + star)
        star += "*"
        blank = ""
    }
}
printStarsAlignedToRight(floors: 5)
