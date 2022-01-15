import UIKit

// Enum: We have different cases and possible values it can hold. Also, we don't store values in a string, as we can make mistakes when writing it

enum Weather {
  case sun
  case cloud
  case rain
  case wind(speed: Int)
  case snow
}

func getHaterStatus(weather: Weather) -> String? {
  switch weather {
  case .sun, .snow: return nil
  case .cloud, .wind: return "dislike"
  case .rain: return "hate"
  }
}
getHaterStatus(weather: .sun) // Weather.sun, because the function accepts a parameter that is type Weather, we don't need to say Weather. again, only .something (type inference)
getHaterStatus(weather: .cloud)

// * Enums are very used with switch control flow *


// MARK: Raw Values and Looping

enum Month: Int {
  case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

let october: Month = Month.october
let november = Month.november
let december: Month = .december
december.rawValue // 12 (Because Month type is Int)

func monthsUntilJingleBells(from month: Month) -> Int {
  return Month.december.rawValue - month.rawValue
}
monthsUntilJingleBells(from: .october)

enum Season: String, CaseIterable {
  case summer = "☀️"
  case winter = "☃️"
  case spring = "🌸"
  case autumn
}

Season.winter.rawValue
Season.autumn.rawValue

for season in Season.allCases {
  print(season.rawValue)
}

enum Coin: Double {
  case penny = 0.01
  case nickel = 0.05
  case dime = 0.1
  case quarter = 0.25
  case halfDollar = 0.5
  case dollar = 1
}

var coinPurse: [Coin] = [.dime, .halfDollar, .dollar, .dollar, .halfDollar, .penny]

let totalCoins = coinPurse.reduce(0.0) { partialResult, coin in
  partialResult + coin.rawValue
}
print("You have $\(totalCoins) dollars.")

// MARK: Enums with Switch Statement

func getSeason(for month: Month) -> Season {
  switch month {
    case .december, .january, .february, .march:
      return .summer
    case .april, .may, .june:
      return .autumn
    case .july, .august, .september:
      return .winter
    case .october, .november:
      return .spring
  }
}
print(getSeason(for: .november).rawValue)

enum Direction: CaseIterable {
  case north, south, east, west
}

func getLocation(for directions: [Direction]) -> (Int, Int) {
  
  var (x, y): (Int, Int) = (0, 0)
  
  /* directions.reduce(into: (0, 0)) { location, direction in
    switch statement here
  }*/
  
  for direction in directions {
    switch direction {
      case .north: y += 1
      case .south: y -= 1
      case .west: x -= 1
      case .east: x += 1
    }
  }
  return (x, y)
}

let direction = getLocation(for: [.north, .west, .west])
print(direction)

// MARK: Enums with Associated Values

func getHaterStatus(for weather: Weather) -> String? {
  switch weather {
  case .sun, .snow: return nil
  case let .wind(speed) where speed < 10:
    return "meh"
  case .cloud, .wind: return "dislike"
  case .rain: return "hate"
  }
}
getHaterStatus(for: .wind(speed: 4))
getHaterStatus(for: .wind(speed: 15))

// Only wind has a value, and we can create extra conditions to switch/case so that a case will match only if those conditions are true

enum TwoDimensionalPoint {
  case origin
  case onXAsis(Double)
  case onYAsis(Double)
  case noZeroCoordinate(x: Double, y: Double)
}

let coordinates = (1.0, 3.0)
let twoDimensionalPoint: TwoDimensionalPoint

switch coordinates {
  case (0, 0): twoDimensionalPoint = .origin
    
  case (_, 0): twoDimensionalPoint = .onYAsis(coordinates.1)
    
  case (0, _): twoDimensionalPoint = .onXAsis(coordinates.0)

  default:
    twoDimensionalPoint = .noZeroCoordinate(x: coordinates.0, y: coordinates.1)
}

func getValues(for point: TwoDimensionalPoint) -> (x: Double, y: Double) {
  switch point {
    case .origin: return (0, 0)
    case let .onXAsis(x):
      return (x, 0)
    case .onYAsis(let y):
      return (0, y)
    case let .noZeroCoordinate(x: x, y: y):
      return (x, y)
  }
}

getValues(for: .onYAsis(3.0))
getValues(for: .onXAsis(3.0))
getValues(for: .noZeroCoordinate(x: 4, y: 5))
getValues(for: .origin)

