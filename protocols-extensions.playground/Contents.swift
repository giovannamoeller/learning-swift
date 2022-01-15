import UIKit

extension Int {
  func clamp(low: Int, high: Int) -> Int {
    if self > high {
      return high
    }
    else if self < low {
      return low
    }
    return self
  }
}

let i: Int = 8
i.clamp(low: 0, high: 5)
// UInt -> it sacrifices the ability to hold negative numbers in exchange for the ability to hold much larger positive numbers.

// But UInt doesn't have the extension, so we can use Protocol Extensions

// self lets us refer to our current value. Otherwise, Self, means current data type, instead of current value.

extension BinaryInteger { // BinaryInteger is a protocol that all of Swift's integer types conforms to
  func clamp(low: Self, high: Self) -> Self {
    if self > high {
      return high
    }
    else if self < low {
      return low
    }
    return self
  }
}

let k: UInt = 4
k.clamp(low: 0, high: 6)

protocol Employee {
  var name: String { get set }
  var jobTitle: String { get set }
  func doWork()
}

extension Employee {
  func doWork() {
    print("I'm busy!") // Every type that conforms to Employee protocol will call this function
  }
}

