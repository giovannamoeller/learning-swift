import UIKit

// MARK: String - an array (collection) of characteres

var name: String // Explicit type annotation
name = "Tim"

let surname = "McGraw" // Implicit

// Swift is a type safe language, it should always know which data type the variable is storing

// surname = 2 -> Impossible, because it's a type safe language

// MARK: Integers

let age: Int
age = 25

// MARK: Float and Double

// Apple's recommendation is to always use doubles (highest accuracy)

var latitude: Double = 36.16667
var longitude: Float

longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333
// As we add more number before the point, Swift is removing numbers after. This is because it has limited space in which store your number, so it's storing the most important part first. Double can hold more values than Float (has twice the accuracy).

// MARK: Boolean

// Can only hold two values: true or false

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool = true

var missABeat = false // Type inference: Swift can infer that data type should be used for a variable by looking at the value you just stored

// Naming convention: camelCase for variables

// MARK: Using Type Annotations Wisely

// It's preferable to use:
var myName: String = "Giovanna"

// Than:
var myLastName: String
myLastName = "Moeller"

// Also, it's recommended that we always specify the type of the variable
