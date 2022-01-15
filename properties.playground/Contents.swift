import UIKit

struct Person {
  var clothes: String {
    willSet {
      updateUI("I'm changing from \(clothes) to \(newValue)")
    }
    
    didSet {
      updateUI("I just changed from \(oldValue) to \(clothes)")
    }
  }
  var shoes: String
  
  func describe() {
    print("I like wearing \(clothes) with \(shoes)")
  }
  
  func updateUI(_ msg: String) {
    print(msg)
  }
}

var taylor = Person(clothes: "T-shirts", shoes: "Sneakers")
var other: Person = .init(clothes: "Short Skirts", shoes: "High Heels")
taylor.describe()
other.describe()

// MARK: Property Observers

// Swift lets you add code to be run when a property is about to be changed or has been changed

taylor.clothes = "Dress"
other.clothes = "Jeans"

// MARK: Computed Properties

// Properties that are actually code behind the scenes using get and set

struct Dog {
  var age: Int
  
  var ageInHumanYears: Int {
    return age * 7 // a read-only property doesn't need the "get" keyword
  }
}

var binha = Dog(age: 6)
binha.ageInHumanYears
binha.age = 10
binha.ageInHumanYears

struct Rectangle {
  var height: Int
  var length: Int
  
  var perimeter: Int {
    get { return (2 * height) + (2 * length) }
    // set -> newValue
  }
}

let rectangle = Rectangle(height: 2, length: 2)
rectangle.perimeter

struct Office {
  let paperclipCost = 10
  static var paperclipSalesRecord: Int = 0
  
  private(set) var paperclipSales: Int {
    willSet {
      print("We adjusted the sales to \(newValue) paperclips.")
      if newValue > Office.paperclipSalesRecord {
        Office.paperclipSalesRecord = newValue
      }
      print(Office.paperclipSalesRecord)
    }
    didSet {
      print("Originally, we sold \(oldValue) paperclips.")
    }
  }
  
  init(paperclipSales: Int) {
    self.paperclipSales = paperclipSales
  }
  
  var totalRevenue: Int {
    get {
      return (paperclipCost * paperclipSales) + getSecretRevenue()
    }
    set(newTotalRevenue) {
      paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
    }
  }
  
  private func getSecretRevenue() -> Int {
    return 100
  }
  
  func printTotalRevenue() {
    //let totalRevenue = paperclipSales * paperclipCost + getSecretRevenue()
    print("Our total revenue this month is \(totalRevenue).")
  }
}

var alphaOffice = Office(paperclipSales: 18)
alphaOffice.totalRevenue = 400

alphaOffice.printTotalRevenue()
print(alphaOffice.totalRevenue)
// let invalidAccess = alphaOffice.paperclipSales
// alphaOffice.getSecretRevenue()
print(alphaOffice.paperclipSales)
// alphaOffice.paperclipSales = 48 -> Error! Variable can't change value
