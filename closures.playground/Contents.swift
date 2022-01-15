import UIKit

// Closure: a really important data type used in Swift and Cocoa Touch

// Can be thought of as a variable that holds lines of code.

let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
  vw.alpha = 0
})
// UIView is an iOS data type in UIKit that represents the most basic kind of user interface container.

/*
 Closures also capture the environment where they are created, which means they take a copy of the values that are used inside them.
 
 So, this method needs to use a closure because UIKit has to do all sorts of work to prepare for the animation to begin, so what happens is that UIKit takes a copy of the code inside the braces (that's our closure), stores it away, does all its prep work, then runs our code when it's ready.
 This wouldn't be possible if we just run our code directly.
 
 We declare the vw constant outside the closure, then use it inside of it. Swift detects this, and makes that data available inside the closure too.
 */

// MARK: Trailing Closures

// If the last parameter to a method takes a closure, you can eliminate that parameter and instead provide it as a block of code inside braces.

let vw2 = UIView()

UIView.animate(withDuration: 0.5) {
  vw2.alpha = 0
}

typealias Operate = (Int, Int) -> Int

func add(_ a: Int, _ b: Int) -> Int {
  a + b
}

func printResult(_ operate: Operate, _ a: Int, _ b: Int) {
  print(operate(a, b))
}

printResult(add, 3, 4)

var operate = add
  
add(4, 5)
operate(4, 5) // When you store a function in a variable there's no argument label, the variable is really a closure
var addClosure: Operate = { (a: Int, b: Int) -> Int in // in starts the body function, instead of the curly braces
  a + b
}
var multiplyClosure = { (a: Int, b: Int) -> Int in
  a * b
} // Closures don't have argument labels
multiplyClosure(4, 5)
addClosure(5, 6)

printResult(addClosure, 5, 6)
printResult(+, 3, 4)

printResult({ c, d in
  (c * d) + 100
}, 40, 5) // Closure passed in function (inline functions)

func calculateFullName(firstName: String, lastName: String?) -> String {
  firstName + " " + (lastName ?? "")
}

typealias FullName = (String, String?) -> String

let calculateFullNameClosure: FullName = { (firstName, lastName) in
  firstName + " " + (lastName ?? "")
}
calculateFullNameClosure("Giovanna", "Moeller")

// Closure Syntax

let longClosure = { (a: Int, b: Int) -> Int in
  a * b
}
longClosure(2, 3)

let noParameterTypes: Operate = { (a, b) -> Int in
  a * b
}
noParameterTypes(2, 3)

let noReturnType: Operate = { a, b in
  a * b
}
noReturnType(2, 3)

let shortClosure: Operate = { $0 * $1 }
// Each parameter is given a number starting in 0, and you can refer to that parameter with a dollar sign
shortClosure(2, 3)

let voidClosure: () -> Void = { // or () -> ()
  print("Hey!")
}
voidClosure()

func printResultClosure(_ a: Int, _ b: Int, _ operate: Operate) {
  print(operate(a, b))
}
// When function is the last parameter and used as closure, we can use something called "trailing closure syntax"
printResultClosure(2, 3) { a, b in // Trailing closure syntax
  a - b
}
printResultClosure(2, 3, { a, b in // Not trailing closure syntax
  a + b
})
