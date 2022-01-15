import UIKit

// Functions as parameters

func add(number1: Int, number2: Int) -> Int {
  number1 + number2
}

var function = add // We aren't calling the function, only assigning it
function(4, 5)

func subtract(number1: Int, number2: Int) -> Int {
  number1 - number2
}

function = subtract
function(6, 7) // We don't have to use argument labels

// Functions can use functions as parameter and return types. Functions that do this are called "higher-order functions"

typealias Operate = (Int, Int) -> Int

func printResult(operate: Operate, _ a: Int, _ b: Int) {
  let result = operate(a, b)
  print(result)
}

printResult(operate: { a, b in
  a + b
}, 2, 3)

printResult(operate: { a, b in
  a - b
}, 2, 3)

printResult(operate: { a, b in
  a * b
}, 2, 3)

printResult(operate: add, 2, 3)
printResult(operate: +, 5, 4)
printResult(operate: -, 5, 4) // bult-in in Swift
printResult(operate: *, 5, 4)
printResult(operate: /, 5, 4)
