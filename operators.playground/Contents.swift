import UIKit

// MARK: Math Operators (Arithmetic)

var a = 10
a = a + 1
a = a - 1
a = a * a

var score = 0 // 0
 
score = 4 + 2 // 6
 
score = score - 2 // 4
 
score = 4 * 2 // 8
 
score = 4 / 2 // 2
 
score = 5 % 2 // 1

var amount = 18.50
var tip = amount * 0.2
print(tip)

// MARK: Compound Assignment Operators
var b = 10
b += 10 // Add then assign to
b -= 10

var dollars = 5

dollars += 4
 
dollars -= 3
 
dollars *= 5

dollars /= 6
 
dollars %= 2

var apples = 16

apples -= 4
apples /= 2

print(apples)

var c = 1.1
var d = 2.2
var e: Double = c + d

var name = "Giovanna"
var surname = "Moeller"
var fullName = name + " " + surname // Concatenation

9 % 3
10 % 3
// 10 / 3 = 3,...
// 3 * 3 = 9
// 10 - 9 = 1

// MARK: Comparison Operators ==, !=, >, <, >=, <=

var f = 1.1 + 2.2
f > 3
f >= 3
f > 4
f < 4
name == "Giovanna"
name == "giovanna" // Swift is case sensitive
name != "giovanna"

let tuneSquadPoints = 78
let monstarsPoints = 77

let monstarsWinner = monstarsPoints > tuneSquadPoints

var stayedOutTooLate = true
stayedOutTooLate
!stayedOutTooLate

let passingGrade = 50
let studentGrade = 99

let studentPassed = studentGrade >= passingGrade
let studentFailed = studentGrade < passingGrade

let catName = "Ozma"
let dogName = "Mango"
catName == dogName
catName > dogName // O comes after than M, so it's true

// MARK: Logical Operators && || !

var midnight = true
var date = "January 1, 2020"

if midnight && date == "January 1, 2020" {
  print("It's the start of a new decade!")
}

var carInMotion = false
var insideACar = true

if carInMotion || insideACar {
  print("Safety first! Buckle up.")
}

var feelingWell = true

if !feelingWell {
  print("Have some vitamins and take care of yourself 🤒")
  
} else {
  print("Embrace the day!")
}

var correctPassword = false
var lessThanThreeTries = true
var accessThroughTouchID = true
var unlock: Bool

if correctPassword && lessThanThreeTries || accessThroughTouchID {
  unlock = true
} else {
  unlock = false
}

// Controlling Order of Execution -> () and then &&

(true || false) || false || false
!true || (false && false || true)
!(false && true) && (false || false)

