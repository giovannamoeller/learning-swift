import UIKit

// Combining variables and constants inside a string

var name = "Giovanna Moeller"
print("Your name is \(name).")
print("Your name is " + name + ".")

var age = 21
var latitude = 26.1667

print("Your name is \(name), your age is \(age) and your latitude is \(latitude).")
// "Your age is " + age : Swift won't let us add integers to a string

print("You are \(age) years old. In another \(age) years you will be \(age * 2) years old.")


