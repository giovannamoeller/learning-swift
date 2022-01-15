import UIKit

// Another type of collection based on key-value

var person: [String: String] = [
  "firstName": "Giovanna",
  "lastName": "Moeller",
  "age": "21"
]

var person2: [String: Any] = [
  "firstName": "Giovanna",
  "lastName": "Moeller",
  "age": 21
]

person
person2

person["firstName"] // We access the value by the key instead of index, like an array. It's much more intuive
person["age"]

var emptyLiteral: [String: Int] = [:]
var emptyInitializer = [String: Bool]()

var emptyDictionary: [String: Int] = [:]
var namesAndPets = ["Giovanna": "Binha", "Claudia": "Fiona"]
print(namesAndPets)
namesAndPets["Giovanna"] // Optional
namesAndPets.updateValue("Fifi", forKey: "Claudia")
namesAndPets["Giovanna"] = "Bibi"

namesAndPets.count
namesAndPets["Avatá"] // Nil
let binha = namesAndPets["Giovanna"] ?? "Unknown"
namesAndPets.isEmpty
let value = namesAndPets.removeValue(forKey: "Giovanna")
namesAndPets["Lala"] = "Brigit"
namesAndPets["Lala"] = nil
print(namesAndPets)

for (character, pet) in namesAndPets {
  print("\(character) has the pet \(pet)")
}

for (character, _) in namesAndPets {
  print(character)
}

for character in namesAndPets.keys {
  print(character)
}

for pet in namesAndPets.values {
  print(pet)
}

var roleModels: [String: String] = [
  "Mr. Rogers": "Fred McFeely Rogers",
  "The Crocodile Hunter": "Stephen Robert Irwin",
  "Bill Nye the Science Guy": "William Sanford Nye"
]

var movieYears = [ // Type inference
  "Finding Nemo": 2003,
  "Toy Story": 1995
]

var teaSteepingTemperature = [
  "Black": 212,
  "Oolong": 185,
  "White": 185
]

teaSteepingTemperature["Green"] = 185
teaSteepingTemperature["Rooibos"] = 212

var abbreviations = [
  "LOL": "Laboring Over Latkes",
  "LMK": "Let Me Know",
  "BRB": "Bringing Radishes Back",
  "GJOYC": "Great Job On Your Code"
]

abbreviations["LOL"] = "Laugh Out Loud"
abbreviations.updateValue("Be Right Back", forKey: "BRB")

print(abbreviations)

var rainbowHex = [
  "red": "#ff0000",
  "pink": "#ffc0cb",
  "yellow": "#ffff00",
  "maroon": "#800000",
  "green":  "#00ff00",
  "blue": "#0000ff",
  "violet": "#ee82ee"
]

rainbowHex["maroon"] = nil
rainbowHex.removeValue(forKey: "pink")
rainbowHex.removeAll()

print(rainbowHex)

var numberOfSides = [
  "triangle": 3,
  "square": 4,
  "rectangle": 4,
  "decagon": 10,
  "triacontagon": 30
]

if numberOfSides.isEmpty {
  print("This dictionary has no elements in it.")
} else {
  print(numberOfSides.count)
}

var flowerNames = [
  "Lily": "Lilium",
  "Sunflower": "Helianthus",
  "Orchid": "Orchidaceae",
  "Daffodil": "Narcissus"
]

var sunflowerScientific = flowerNames["Sunflower"]!

if let lilyScientific = flowerNames["Lily"] {
  print("A lily is referred to as a \(lilyScientific) in the science community.")
}

print(sunflowerScientific)

var mythology = [
  "Zeus": "Jupiter",
  "Athena": "Minerva",
  "Poseidon": "Neptune",
  "Demeter": "Ceres"
]

for (greekName, romanName) in mythology {
  print("\(greekName) is also known as \(romanName)")
}

var lemonadeStand = [
  "April": 8.50,
  "May": 12.75,
  "June": 22.50,
  "July": 38.25,
  "August": 32.50,
  "September": 11.50
]

var total: Double = 0.0

for monthlyProfit in lemonadeStand.values {
  total += monthlyProfit
}

print("Total profits are \(total)")

var avengers: [String: String] = [
  "Captain America": "Chris Evans",
  "Spider Man": "Tom"
]

avengers["Black Widow"] = "Scarlett Johanson"
avengers.updateValue("Tom Holland", forKey: "Spider Man")

avengers["Captain America"] = nil

print(avengers)
