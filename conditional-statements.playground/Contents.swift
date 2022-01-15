import UIKit

var action: String
var person: String = "hater"

if person == "hater" { // Always returns a bool value
  action = "hate"
}

var isPersonAHater = person == "hater"
var isPersonAPlayer = person == "player"

if isPersonAHater {
  action = "hate"
} else if isPersonAPlayer {
  action = "play"
} else {
  action = "cruise"
}

// MARK: Logical Operators (Evaluating multiple conditions)

var age = 14
var minimiumDriveAge = 18

var canDrive = age >= minimiumDriveAge
var hadBeer = true

if canDrive && hadBeer {
  print("You shouldn't be driving!")
}

if !canDrive {
  print("Oops you can't drive yet! Wait until you're \(minimiumDriveAge) years old. Currently, you have \(age) years old.")
}

if canDrive && !hadBeer {
  print("You can drive :D")
}

if canDrive || hadBeer {
  print("Be careful :)")
}

var learningToCode = true

if learningToCode {
  print("Don't forget to take breaks! You got this 💪")
}

var wearGlasses: Bool = true

if wearGlasses {
  print("🤓")
} else {
  print("😊")
}

let tuneSquadPoints = 78
let monstarsPoints = 77

if tuneSquadPoints < monstarsPoints {
  print("Monstars is the winner")
} else {
  print("TuneSquad is the winner")
}

/*
🇺🇸 English = EN
🇪🇸 Spanish = ES
🇧🇷 Portuguese = PT
🇫🇷 French = FR
*/

var abbreviation = "EN"

if abbreviation == "EN" {
  print("English")
} else if abbreviation == "ES" {
  print("Spanish")
} else if abbreviation == "PT" {
  print("Portuguese")
} else if abbreviation == "FR" {
  print("French")
} else {
  print("Abbreviation not found")
}

// Ternary Conditional Operator

var windy = true
windy ? print("Sails up") : print("Motor on")

var isEligibleToDrive = age >= minimiumDriveAge ? true : false

