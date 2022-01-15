import UIKit

// Define reusable pieces of code that perform specific pieces of functionality

func favoriteAlbum() {
  print("My favorite is Fearless")
}
favoriteAlbum() // Calling the function

func favoriteSinger(name: String) {
  print("My favorite singer is \(name)")
}
favoriteSinger(name: "Miley Cyrus")

func directionsToTimesSq() -> Void {
  print("Walk 4 mins to 34th St Herald Square train station.")
  print("Take the Northbound N, Q, R, or W train 1 stop.")
  print("Get off the Times Square 42nd Street stop.")
  print("Take lots of pictures! 📸")
}

directionsToTimesSq()

// With a function you change it once, everything updates

func printAlbumRelease(name: String, year: Int) {
  print("\(name) was released in \(year)")
}
printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

let weight = 70.0 // in Kilograms
let height = 1.73 // in Meters
func findBMI() -> Double {
  return weight / (height * height)
}
func findBMI(weight: Double, height: Double) -> Double {
  return weight / (height * height)
}

print(findBMI())
print(findBMI(weight: 65, height: 1.57))

func findCircumference(diameter: Double) -> Double {
  return 3.14 * diameter
}

var result = findCircumference(diameter: 20)

func timeToDestination(distance: Int, speed: Int) -> Int {
  let time = distance / speed
  return time
}

print(timeToDestination(distance: 6836, speed: 560))

// MARK: External and Internal Parameter Names

// Parameters are named one way when a function is called, but another way inside the function itself. It's a common technique: when you call a function it uses almost natural english, but inside the function the parameters have sensible names

func countLettersInString(for str: String) {
  print("The string \(str) has \(str.count) letters!")
}
countLettersInString(for: "Giovanna")

// Underscore as external parameter name: it shouldn't have any external name at all (omitting argument labels)
func countLettersInString(_ str: String) {
  print("The string \(str) has \(str.count) letters!")
}
countLettersInString("Giovanna")

func museumEntry(_ numAdults: Int, _ numStudents: Int) -> Int {
  let studentTicket = 14
  let adultTicket = 25
  let total = (studentTicket * numStudents) + (adultTicket * numAdults)
  return total
}
museumEntry(2, 4)

// Common external parameters: in, for, with...

// Default parameters

func bookingTicket(passengerName: String = "Giovanna", seatClass: String = "Economy", timeOfDeparture: Int) -> String {
  return "\(passengerName), your seat class is \(seatClass), and you will be departing at \(timeOfDeparture). "
}

print(bookingTicket(timeOfDeparture: 9))
print(bookingTicket(seatClass: "Business", timeOfDeparture: 9))

// MARK: Return Values

func sayHello() -> String {
  "Hellooo!"
}
sayHello()

func albumIsTaylor(albumName: String) -> Bool {
  switch albumName {
  case "Taylow Swift", "Fearless", "Speak Now", "Red", "1989":
    return true
  default:
    return false
  }
}

albumIsTaylor(albumName: "Red")
albumIsTaylor(albumName: "Blue")

func multiplyNumberBy2(_ number: Int) -> Int {
  number * 2
}
multiplyNumberBy2(12)

// Returning Multiple Values
func favoriteCuisine() -> (name: String, dish: String) {
  return ("American", "X Burger")
}

let cuisine = favoriteCuisine()
print("My favorite \(cuisine.name) dish is \(cuisine.dish)!")

// Implicit Return
func findRemainder(dividend: Int, divisor: Int) -> Int {
   dividend % divisor
}

print(findRemainder(dividend: 10, divisor: 4))

// Variadic parameters

func avgSongLength(times: Int...) -> Int {
  // times is treated as an array, but it's not one
  var total = 0
  for time in times {
    total += time
  }
  return total / times.count
}

print(avgSongLength(times: 183, 176, 180, 176, 184, 179, 181, 180, 172, 178))

// In-Out Parameters
var currentGeneratorState = "Off"
  
func generators(powerOutage: Bool, state: inout String) {
  if powerOutage {
    state = "On"
  } else {
    state = "Off"
  }
}

generators(powerOutage: true, state: &currentGeneratorState)
print(currentGeneratorState)

// MARK: Overloading functions

// Different number of parameters
func studentPassed(for grade: Int) -> Bool {
  grade >= 50
}

func studentPassed(for grade: Int, lowestPass: Int) -> Bool {
  grade >= lowestPass
}

studentPassed(for: 60)
studentPassed(for: 60, lowestPass: 50)
// You can also use default value to avoid overloading functions
// Different parameter type
func studentPassed(for grades: [Int]) -> Bool {
  var sum = 0
  for grade in grades {
    sum += grade
  }
  let result = sum / grades.count
  return result >= 50
}
studentPassed(for: [50, 60, 30, 70, 20])

// Different argument labels
for i in stride(from: 10, to: 0, by: -2) { // Doesn't include the last value
  print(i)
}

for i in stride(from: 10, through: 0, by: -2) { // Includes the last value
  print(i)
}

// Different return type
func getValue() -> Int {
  return 13
}
func getValue() -> String {
  return "Giovanna"
}
let value: String = getValue() // We need to type it
let value2: Int = getValue()
