import UIKit

// MARK: Functional Programming

// MARK: ForEach & Map

var prices = [1.50, 10.00, 4.99, 2.30, 8.19]

prices.forEach { price in
  print(price)
} // Foreach doesn't return anything (Void)
prices.forEach { print($0) }

let discountPrices = prices.map { price -> Double in
  price * 0.9
}
print(discountPrices)

let salePrices = prices.map { $0 * 0.9 }

let priceLabels = salePrices.map { (price) -> String in // Map returns a new array
  String(format: "%.2f", price)
}
print(priceLabels)

// MARK: CompactMap & FlatMap

let userInput = ["meow", "15", "37.5", "seven"]

let userInputNumbers = userInput.compactMap { userInput in // Deals with Optionals
  Int(userInput)
}
userInputNumbers

// Without compact map
var arrayForValidInput: [Int] = []
for input in userInput {
  guard let input = Int(input) else { continue }
  arrayForValidInput.append(input)
}
arrayForValidInput

let arrayOfDwarfArrays = [
  ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
  ["Thorin", "Nori", "Bombur"]
]

let dwarvesAfterM = arrayOfDwarfArrays.flatMap { dwarves -> [String] in // Deals with Multidimensional arrays
  var afterM: [String] = []
  for dwarf in dwarves where dwarf > "M" {
    afterM.append(dwarf)
  }
  return afterM
}
dwarvesAfterM

// MARK: Filter, Reduce & Sort

// Filter
let dwarvesAfterM2 = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
  return dwarves.filter { dwarf -> Bool in
    dwarf > "M"
  }
  // dwarves.filter { $0 > "M" }
}
print(dwarvesAfterM2)

// Reduce
func getPassStatus(for grades: [Int]) -> Bool {
  let totalGrade = grades.reduce(0) { (total, grade) -> Int in
    total + grade
    // 0 + 10
    // 10 will be stored in total -> 10 + 30 = 40
    // 40 will be stored in total -> 40 + 40 = 80
  }
  print(totalGrade)
  return (totalGrade / grades.count) > 50
  // var totalGrade = grades.reduce(0, +)
}
getPassStatus(for: [10, 30, 40])

var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]

let stockSums = stock.reduce(into: []) { result, item in // Into is the initial value
  result.append(item.key * Double(item.value))
}
print(stockSums)

// Sort
var names = ["Zeus", "Poseidon", "Ares", "Demeter"]
names.sort()
names.sort { a, b in
  a > b
}
names // Mutates the original array
names.sort(by: >)

// If we want a new array, we use sorted()
let longToShortNames = names.sorted { a, b in
  a.count > b.count
}.filter { name in
  name > "G"
} // We can group methods
print(longToShortNames)
