let yes = true
let no = false

let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualTwo = (1 != 2)
let isOneGreaterThanTwo = (1 >= 2)
let isOneLessThanTwo = (1 <= 2)

let and = true && false
let or = false || false || true

let andTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4
let orTrue = 1 < 2 || 3 > 4
let orFalse = 1 == 2 || 3 == 4

let guess = "dog"
let dogEqualsCat = guess == "cat"
let order = "cat" < "dog"


let a = 500
let b = 10
let min: Int
if a < b {
    min = a
} else {
    min = b
}
min
