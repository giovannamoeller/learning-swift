import UIKit

// Group a lot of values together into a single collection, then access those values by their position

var evenNumbers = [2, 4, 6, 8] // Type inference
var songs: [String] = ["Shake it Off", "You belong with me", "Back to December"]
songs[0] // An item's position in an array is called index
songs[1]
// songs[3] : Application crashed

type(of: evenNumbers)
// As we have an array of integers, we can't add another data that is a different type

// If we want an array of different data types, we should specify it as "Any" type:
var numbers: [Any] = [1, 2, 3, "1", "2", "3"]

// MARK: Creating arrays

var oddNumbers: [Int] = []
var doubleNumbers = [Double]()

// var floatNumbers: [Float] - You're telling Swift that this array will store Float values, but it doesn't actually create that Array, so it doesn't allocate any RAM.

// floatNumbers[0] = 1.1

var subwayAdult = [Int]()
var subwayChild = [Int]()

var subwayAdult2 = [800, 1200, 1500]
var subwayChild2: [Int] = [400, 600, 750]

var temperature: [Int] = [66, 68, 72, 76, 80, 82, 85, 85, 84, 82, 81, 78, 74, 73, 72, 71, 70, 69, 68, 65, 63, 62, 61, 63]

temperature[0]

// MARK: Array Operators

var girlNames = ["Anna", "Lucia", "Pattie"]
var boyNames = ["Pedro", "Peter", "Harry"]
var allNames = girlNames + boyNames
allNames

girlNames += ["Giovanna"]
boyNames.append("Andre")

allNames.count

var grocery = ["🥓", "🥞", "🍪", "🥛", "🍊"]
grocery.count // 5

var resolutions = ["play more music 🎸", "read more books 📚", "drink more water 💧"]

resolutions.append("learn swift")
resolutions += ["go to gym"]

print(resolutions)

var dna = ["ATG", "ACG", "GAA", "TAT"]

dna.insert("GTG", at: 3)
dna.remove(at: 0)

print(dna)

var list = [2, 4, 3, 6, 1, 9]

var odd: Int = 0
var even: Int = 0

for item in list {
  item % 2 == 0 ? (even += item) : (odd += item)
}

print(even, odd)

var pastries: [String] = ["Cookie", "Cupcake", "Pie", "Donut"]
pastries.count
pastries.append("Brownie")

var numbers: [Int] = []
numbers.append(10)
numbers.append(42)
numbers.append(65)
numbers += [100, 88, 99]
print(numbers)

pastries[0]
pastries[pastries.count - 1] // last element
pastries.last
// pastries[13] -> Index out of range
let firstThree = pastries[1...3]
// firstThree[0] -> Error! Indexs are: 1, 2, 3.
print(firstThree)

let firstFour = Array(pastries[1...4]) // Now creates a new array
firstFour[0]

numbers.removeAll()
numbers.isEmpty
pastries.first // Optional
if let first = pastries.first {
  print(first)
}

pastries.contains("Cookie")
pastries.contains("Lasagna")
pastries.insert("Lasagna", at: 0) // 0 is index
let removedElement = pastries.remove(at: 0) // Returns the elements
let removedLast = pastries.removeLast()

pastries[0] = "Nutella"
print(pastries)
pastries[0...1] = ["Brownie", "Fritter", "Tart"]
print(pastries)
pastries.swapAt(2, 3)
print(pastries)


