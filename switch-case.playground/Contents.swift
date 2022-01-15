import UIKit

// Another control flow type that provides a list of possible cases for that variable

let liveAlbums = 2

switch liveAlbums {
case 0:
  print("You're just starting out")
case 1:
  print("You just released iTunes Live from Soho")
case 2:
  print("You just released Speak Now World Tour")
default:
  print("Have you done something new?")
}
// Cases are exhaustive. You need to cover all possibilities for cases
// In Swift, we don't need the "break" keyword

// We could also use range operator:

let studioAlbums = 3

switch studioAlbums {
case 0...1:
  print("You're just starting out")
case 2...3:
  print("You're a rising star")
  fallthrough // Make one case fall into the next, even though it doesn't satisfy the case
case 4...5:
  print("You're world famous!")
default:
  print("Have you done something new?")
}

var secretIdentity = "Tony Stark"
var superheroName: String

switch secretIdentity {
  case "Tony Stark":
    superheroName = "Iron Man"
  case "Natasha Romanoff":
    superheroName = "Black Widow"
  case "Prince T'Challa":
    superheroName = "Black Panther"
  case "Thor":
    superheroName = "Thor"
  default:
    superheroName = "Unknown"
}

print(superheroName)

// Interval Matching
var episode = 8
var villain: String

switch episode {
  case 1...3: villain = "Emperor Palpatine"
  case 4...6: villain = "Darth Vader"
  case 7...9: villain = "Kylo Ren"
  default: villain = ""
}

print(villain)

// Compound Cases
var planet = "Earth"

switch planet {
  case "Earth", "Mercury", "Venus", "Mars":
    print("Terrestrial planet")
  case "Saturn", "Jupiter", "Uranus", "Neptune":
    print("Jovian planet")
  default: print("Unknown planet")
}

// Where Clause
var wholeNumber = Int.random(in: 10...20)

switch wholeNumber {
  case let x where x % 2 == 0:
    print("Composite")
  case let x where x % 3 == 0:
    print("Composite")
  default: print("Prime")
}

print(wholeNumber)

// Switching on values

func getDescription(for number: Int) -> String {
  switch number {
    case 0:
      return "Zero"
    case 1...9:
      return "Between 1 and 9"
    case 10..<20:
      return "Between 10 and 19"
    case let negativeNumber where negativeNumber < 0:
      return "Negative"
    case _ where number > .max / 2:
      return "Veeeeery large number!"
    default:
      return "No Description"
  }
}
getDescription(for: 3)
getDescription(for: 20)
getDescription(for: 19)
getDescription(for: -2)
getDescription(for: Int.max)

// Switching on expressions
let number = Int.max
var numberIsEven: Bool

switch number % 2 {
case 0:
  numberIsEven = true
default:
  numberIsEven = false
}

// Switching on multiple values
func pointCategory(for coordinates: (Double, Double)) -> String {
  switch coordinates {
    // coordinates.0 and coordinates.1
    case (0, 0):
      return "Origin"
      
    case (let x, 0):
      return "On the x-asis at \(x)"
      
    case (0, let y):
      return "On the y-asis at \(y)"
      
    case let (x, y) where y > 0 && x > 0:
      return "First Quarter"
      
    case let (x, y) where y > 0 && x < 0:
      return "Second Quarter"
      
    case let (x, y) where y < 0 && x < 0:
      return "Third Quarter"
      
    case let (x, y) where y < 0 && x > 0:
      return "Quarter Quarter"
      
    default:
      return "No Category"
  }
}
pointCategory(for: (0, 0))
pointCategory(for: (4, 0))
pointCategory(for: (0, 6))
pointCategory(for: (0, 6))
pointCategory(for: (4, 5))
pointCategory(for: (-2, 3))
pointCategory(for: (-2, -2))
pointCategory(for: (3, -2))

var lifeStage: String

switch ("Giovanna", 21) {
  case (let name, 0...2):
    lifeStage = "\(name) is an Infant."
  case (let name, 3...12):
    lifeStage = "\(name) is a Child."
  case (let name, 13...19):
    lifeStage = "\(name) is a Teenager."
  case (let name, 20...39):
    lifeStage = "\(name) is an Adult."
  case (let name, 40...60):
    lifeStage = "\(name) is a Middle aged."
  case (let name, 61...): // case (let name, let age) where age >= 61
    lifeStage = "\(name) is a Elderly."
  case(_, let age):
    lifeStage = "Unaccounted for age: \(age)"
}
print(lifeStage)
