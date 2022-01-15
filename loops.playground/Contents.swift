import UIKit

let number = 4

for i in 1...10 { // Closed range operator
  print("\(i) * \(number) = \(i * number)")
}

var str = "I'm just gonna"

for _ in 1...5 { // Half open range operator
  str += " shake"
}
print(str)

let usefulValue = 5
let closeRange = 0...usefulValue // Includes 5
let halfOpenRange = 0..<5 // Doesn't include 5
var sum = 0
for i in 1...10 {
  // i = 20 (i is a constant)
  sum += i
}
print("The sum is \(sum)")

for _ in 1...3 where count > 100 {
  print("Hello World!") // The loop doesn't execute because count is not greather than 100
}

for i in 1...10 where i % 2 != 0 {
  print("\(i) is an odd number.")
}

// MARK: Looping over arrays

var songs = ["Shake It Off", "You Belong With Me", "Look What You Made Me Do"]

for song in songs {
  print("My favorite song is \(song)")
}

for i in 0..<songs.count {
  print("Song: \(songs[i])")
}

for age in 1...20 {
  print("Are you \(age)?")
}

// Stride()

print("We're starting in...")

for num in stride(from: 3, to: 0, by: -1) {
  print(num)
}

print("GO!")

// String: an array of characteres

var funFact = "exlxephxxxaxnts xcaxxn'xxt xxxjxumxpx."

for char in funFact {
  if char != "x" {
    print(char)
  }
}

for _ in 1...15 {
  print("Buy eggs from the market")
}

let daysOfWeek: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
let poolTemperature: [Int] = [78, 81, 74, 80, 79, 83, 84]

for i in 0..<daysOfWeek.count {
  print("\(daysOfWeek[i]): \(poolTemperature[i])")
}

for i in 0..<daysOfWeek.count where poolTemperature[i] >= 80 {
  print("\(daysOfWeek[i]): \(poolTemperature[i])")
}

for day in daysOfWeek {
  print(day)
}

var temperatureSum = 0
for temperature in poolTemperature {
  temperatureSum += temperature
}
let average = temperatureSum / poolTemperature.count

var pastries: [String] = ["Cookie", "Danish", "Cupcake", "Donut", "Pie", "Brownie", "Fritter", "Cruller"]

for pastry in pastries where pastry.first?.uppercased() == "C" {
  // or pastry[pastry.startIndex] == "C"
  print(pastry)
}

// MARK: Inner Loops

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<people.count {
  var str = "\(people[i]) gonna"
  
  for _ in 1...5 { // i, j, k are conventions
    str += " \(actions[i])"
  }
  print(str)
}

var animals = ["🐶", "🐱", "🐭", "🐼", "🦁"]
for animal in animals {
  if animal == "🐼" {
    break
  }
  if animal == "🐱" {
    continue
  }
  print(animal)
}

floor_loop: for floor in 11...15 { // Labeled statements for loops
  room_loop: for room in 1...4 {
    if room == 2 { // Maintence
      continue
    }
    if floor == 12 && room == 3 {
      continue floor_loop
    }
    print("Floor \(floor) - Room \(room)")
  }
}

// MARK: While Loops / Repeat while

var counter = 0

while true { // We don't know how many times we're going to do something
  if counter == 5 {
    break
  }
  print("Counter is now \(counter)")
  counter += 1
}

var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)

while guess != magicNum {
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
  print("You guessed \(guess), and the number was \(magicNum).")
}

print("You're right it was \(guess)!")

var i = 1

while i < 10 {
  print(i)
  i += 1
}
print("Counting up again")

i = 1
repeat { // Executes at least one time
  print(i)
  i += 1
} while i < 10

print("Counting up again")
var j = 10
repeat {
  print(j)
  j += 1
} while j < 10

// Break: exits the loop immediately
// Continue: exits the current iteration of the loop

for song in songs {
  if song == "You Belong With Me" {
    continue
  }
  print("My favorite song is \(song)!")
}

var count = 1

repeat { // Repeat while will execute at least one time
  print("count: \(count)")
  count += 1
} while count < 1

for num in 1...9 {
  if num % 2 != 0 {
    continue // skip the iteration
  }
  print(num)
}

var guessedNum = Int.random(in: 1...15)

for counter in 1...15 {
  if counter == guessedNum {
    print("It's \(guessedNum)!!")
    break
  }
  print("Is it \(counter)?")
}

// Review

for num in 1...100 {
  if num % 2 == 0 {
    print("\(num) is even!")
  } else {
    print("\(num) is odd!")
  }
}

let n = 4
var prime = 0

for x in 2..<n {
  if n % x == 0 {
    if n == 2 {
      break
    }
    prime += 1
    break
  }
}

prime >= 1 ? print("\(number) is not prime") : print("\(number) is prime")

var k = 0
let myString = "Giovanna"

for _ in myString {
  k += 1
}
print("\(myString) contains \(k) characteres")

var pattern = "*"

for _ in 1...4 {
  print(pattern)
  pattern += "*"
}

