import UIKit

// Set is similar to an array, but you can't access an element by index because the order always changes. Also, you can't have two repeated elements inside a set.
var consonants = Set<Character>()

var vowels: Set = ["A", "E", "I", "O", "U"] // We need to explicit Set, otherwise it will consider as an array

print(vowels)

// .count and .isEmpty
var sockDrawer: Set = ["Red Polka Dots", "Blue Stripes", "Plain Whites"]

if sockDrawer.isEmpty {
  print("Time to add some more socks!")
} else {
  print("We have \(sockDrawer.count) pairs of socks.")
}

// Inserting elements
var friends: Set = ["Harry", "Ron"]
print("There are some things you can't share without ending up liking each other, and defeating a twelve-foot mountain troll is one of them.")

friends.insert("Hermione")
friends.insert("Ron")

print("Friends: \(friends)") // Ron will be printed only once
// Removing elements
var planets: Set = ["Earth", "Jupiter", "Mars", "Neptune", "Saturn", "Venus", "Uranus", "Mercury", "Pluto"]

let removedPlanet = planets.remove("Pluto")
planets.removeAll()

print(planets)

// Checking for elements
var coffeeFlavors: Set = ["Caramel", "Mocha", "Pumpkin Spice", "Vanilla", "Blueberry"]

if coffeeFlavors.contains("Blueberry") {
  print("One blueberry coffee coming right up.")
} else {
  print("We do not serve that coffee flavor here.")
}

// Iterating through a Set
var thingsToPack: Set = ["Bathing Suit", "Clothes", "Sunglasses", "Sunscreen", "Favorite Book", "Phone Charger"]

var suitcase = Set<String>()

for item in thingsToPack {
  suitcase.insert(item)
}

print(suitcase)

// Set operations: .intersection() -> Find the elements in common
var swim: Set = ["Turtles", "Ducks", "Puffins", "Shark"]

var fly: Set = ["Humming birds", "Bats", "Ducks", "Puffins"]

var swimAndFly = swim.intersection(fly)
print(swimAndFly)

// Set operations: .union() -> Putting all together
var consonantsSet: Set = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"]

var vowelsSet: Set = ["A", "E", "I", "O", "U"]

// consonants.union(vowels) // it will change the someSet, not return a new set
var alphabet = consonantsSet.union(vowelsSet)
print(alphabet)

// Set operations: .symmetricDifference()
var oscarWinners: Set = ["Heath Ledger", "Rita Moreno", "Audrey Hepburn", "John Legend"]
var emmyWinners: Set = ["Peter Dinklage", "John Legend", "Audrey Hepburn", "Rita Moreno"]

var difference = oscarWinners.symmetricDifference(emmyWinners)

print(difference)

// Set operations: .subtracting()
var foodEmojis: Set = ["????", "????", "???????", "????", "????", "????"]
var fruitEmojis: Set = ["????", "????", "????"]

var veggieEmojis = foodEmojis.subtracting(fruitEmojis)

print(veggieEmojis)
