import UIKit

// Static properties and methods belong to a type, instead of instances of a type

struct TaylorFan {
  static var favoriteSong = "Look What You Made Me Do"
  
  var name: String
  var age: Int
}

let caio = TaylorFan(name: "Caio", age: 20)
print(TaylorFan.favoriteSong)

struct Student {
  var name: String
  
  static var minimiumGradeToPass = 50
  
  static func welcomeStudent() {
    print("Welcome Students!")
  }
}

let student = Student(name: "Giovanna")
Student.minimiumGradeToPass
Student.welcomeStudent()
// student.minimiumGradeToPass : Error because minimiumGradeToPass is a static property
