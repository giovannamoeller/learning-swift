import UIKit

// Let us modify Swift's data types to add new functionalities in a clean way - our new code is indistinguishable from existing code

var myInt = 0

extension Int {
  func plusOne() -> Int {
    return self + 1
  }
  
  mutating func modifyIntPlusOne() {
    self += 1
  }
}

myInt.plusOne()
5.plusOne()

// The extension adds 1 to it's number and return a new value, but doesn't modify the original value

myInt = myInt.plusOne()
print(myInt)

myInt.modifyIntPlusOne()
print(myInt)

// It's good practice to keep differing functionality separated into individual files.

var str = "Giovanna Gimenes Moeller"
//str = str.trimmingCharacters(in: CharacterSet(charactersIn: "G"))
print(str)

extension String {
  mutating func trim() {
    self = self.trimmingCharacters(in: CharacterSet(charactersIn: "G"))
  }
}

str.trim()
print(str)
