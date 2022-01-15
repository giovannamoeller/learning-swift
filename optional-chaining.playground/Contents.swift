import UIKit

// MARK: Optional Chaining

func sayHello() -> String? {
  return "Helloooo"
}

var hello = sayHello()?.uppercased() // Still an optional, but everything after the ? will only be run if everything before the ? has a valid value
print(hello)

// MARK: Nil Coalescing Operator

print(sayHello() ?? "I didn't say hello")
// It's not an optional anymore


