var hoursWorked = 45
var price = 0
if hoursWorked > 40 {
    let hoursOver40 = hoursWorked - 40
    price += hoursOver40 * 50
    hoursWorked -= hoursOver40
}
price += hoursWorked * 55
print(price)

var legallyAllowedWorkHour = 40
var hoursWorked1 = 45
var wage = 0
if hoursWorked1 > 40 {
    let overHour = hoursWorked1 - legallyAllowedWorkHour
    wage += (legallyAllowedWorkHour * 55) + (overHour * 50)
}
print(wage)


