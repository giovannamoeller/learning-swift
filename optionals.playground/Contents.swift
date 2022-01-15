import UIKit

// It may have a value or not (nil)

func getHaterStatus(weather: String) -> String? {
  weather == "sunny" ? nil : "Hate"
}

func takeHaterAction(status: String) {
  if status == "Hate" {
    print("Hating")
  }
}

let haterStatus = getHaterStatus(weather: "sunny")
let status: String?
status = getHaterStatus(weather: "cloudy") // Optional("Hate")

// takeHaterAction(status: status)

// Optional Unwrapping

if let unwrappedStatus = status { // Check and unwrap an optional
  print(unwrappedStatus)
  takeHaterAction(status: unwrappedStatus)
} else {
  print("Nil value")
}

func yearAlbumReleased(name: String) -> Int? {
  switch name {
  case "Taylor Swift": return 2006
  case "Fearless": return 2008
  case "Speak Now": return 2010
  case "Red": return 2012
  case "1989": return 2014
  default: return nil
  }
}
yearAlbumReleased(name: "Red")
yearAlbumReleased(name: "Blue")

var items = ["James", "John", "Sally"]
var john = items.firstIndex(of: "John")
print(john) // Optional -> Might be a value, might not be a value

var petName: String?
petName = "Fiona"
var petAge: Int? = 13
// petName = nil
var result: Int? = 30

let hasAllergies = true
var dog: String?

dog = hasAllergies ? nil : "Mango"

let parsedInt = Int("10") // We can't make sure Swift can convert a string to an Int
let newParsedInt = Int("cat") // Can't convert "cat" to an Int


// MARK: Forcing Unwrap

// Careful! If it's nil, your application will crash
takeHaterAction(status: status!)

if john != nil {
  print(john!) // It's safe to unforce it now
}

// MARK: Implicity Unwrapped Optionals

var fullName: String! = "Giovanna"
// An implicitly unwrapped optional – written as String! – may also contain a value or be nil, but they don’t need to be checked before they are used.
// Implicitly unwrapping that optional means that it’s still optional and might be nil, but Swift eliminates the need for unwrapping.

var petName: String?
petName = "Fiona"
var petAge: Int? = 13
// petName = nil
var result: Int? = 30

// MARK: Unwrap Optionals

result! // Forcing unwrap
if result != nil { // Safety forcing unwrap
  print(result!)
}

if let petName = petName, let petAge = petAge { // Optional binding
  print(petName) // Locally scoped
  print(petAge)
} else {
  print("No pet or age!")
}

print(petName ?? "Binha") // Default value
guard let pet = petName else { fatalError("Error!") } // Guard let
print(pet) // Globally scoped

  
