import UIKit

// Complex and named data types

class Person { // Need an initializer and has the inheritance concept
  var clothes: String // Properties
  var shoes: String
  
  init(clothes: String, shoes: String) { // We don't need to write func() before because init() method is special.
    self.clothes = clothes
    // We use self to reference the instance property (note: parameter names being passed in are the same as the names of the properties we want to assign)
    
    // "The clothes property of this object should be set to the clothes parameter that was passed in"
    self.shoes = shoes
  }
  
  func describe() { // Methods
    print("I like wearing \(clothes) with \(shoes).")
  }
}

// If we didn't want to write an initializer, we could make the properties optionals or give them default values, but that's not used.

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
taylor.clothes
taylor.shoes

var giovanna = taylor
giovanna.clothes = "Dress"
giovanna.clothes
taylor.clothes
// Classes are reference types, so it if you copy one instance (object) to another one, it all points to the same reference in memory. So, if you change a value, the other instance changes it too.

// Changing one copy affects the other one

// MARK: Important - Swift requires that all non-optional properties have a value by the end of the initializer.

// MARK: Class Inheritance

class Singer {
  var name: String
  var age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
  
  func sing() {
    print("La la la")
  }
}

var miley = Singer(name: "Miley", age: 29)
miley.sing()

class CountrySinger: Singer {
  override func sing() { // We override the superclass function
    super.sing() // We can still call the superclass function
    print("Trucks, guitars and liquor!")
  }
}

var billy = CountrySinger(name: "Billy Ray Cyrus", age: 45)
billy.sing()

// CountrySinger is a subclass from Singer, which is a super class (parent).

class HeavyMetalSinger: Singer {
  var noiseLevel: Int
  
  init(name: String, age: Int, noiseLevel: Int) {
    self.noiseLevel = noiseLevel
    super.init(name: name, age: age)
  }
  
  override func sing() {
    super.sing()
    print("Grrrrr rargh rargh rarrrrrgh!")
  }
}

var metallica = HeavyMetalSinger(name: "Mettalica", age: 45, noiseLevel: 15)
metallica.noiseLevel
metallica.sing()

// If we need Objective C code in our Swift class method, we need to mark it with @objc

// Classes offer more flexibility, and structs offer more safety and speedness. Use struct as default, and change it to class if you have a specific reason

class Student {
  var name: String
  var grade: Int
  var pet: String?
  
  init(name: String = "", grade: Int = 0, pet: String? = nil) {
    self.name = name
    self.grade = grade
    self.pet = pet
  }
  
  func getPassStatus() -> Bool {
    return grade >= 50
  }
  
  func earnExtraCredit() {
    grade += 10
  }
}

let student1 = Student(name: "Giovanna", grade: 99, pet: "Binha e Fi")
let student2 = Student(name: "Leonardo", grade: 40)
student1.earnExtraCredit()
student2.getPassStatus()

// Extra Code

