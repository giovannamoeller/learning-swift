import UIKit

// Complex and named data types

struct Person { // Don't need an initializer
  var clothes: String // Properties
  var shoes: String
  
  func describe() { // Methods
    print("I like wearing \(clothes) with \(shoes).")
  }
}

struct Book {
  var title: String
  var pages: Int
}

// Default property values

struct BookDefault {
  var title: String = ""
  var pages: Int = 0
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
taylor.clothes
taylor.shoes

var myFavBook = BookDefault()

// Accessing and Editing Properties
myFavBook.pages
myFavBook.pages = 640
myFavBook.pages

myFavBook.title = "Harry Potter"
myFavBook.title

var giovanna = taylor
giovanna.clothes = "Dress"
giovanna.clothes
taylor.clothes

// Structs are value types, so it copies it behind the scenes, duplicates it from the original. Actually, Swift uses a technique called "copy on write", which means it only actually copies your data if you try to change it.

// Changing one copy doesn't affect the other one

struct Dog {
  var age : Int
  var isGood : Bool
  
  init (age: Int, isGood: Bool) { // We don't have to, but we can have an initializer
    self.age = age
    self.isGood = isGood
  }
}

var bucket = Dog(age: 4, isGood: true)
print(bucket.age)
print(bucket.isGood)

// Memberwise Initialization
struct Band {
  var genre: String
  var members: Int
  var isActive: Bool
  
  func pumpUpCrowd() -> String {
    if self.isActive {
      return "Are you ready to ROCK?"
    } else {
      return "..."
    }
  }
  
  mutating func changeGenre(newGenre: String) -> String { // Structs are immutable, so we have to add the keyword "mutating" in order to change a self property
    self.genre = newGenre
    return self.genre
  }
}

var maroon5 = Band(genre: "pop", members: 5, isActive: true)

taylor.describe() // Methods
print(maroon5.pumpUpCrowd())
print(type(of: taylor))
print(type(of: maroon5))

struct Client {
  var name: String
  var email: String
  var cpf: String
  var address: Address
}

struct Address {
  var street: String
  var number: Int
}

let client1Address = Address(street: "Alameda", number: 98)

let client1: Client = .init(name: "Giovanna", email: "gigi@gmail.com", cpf: "39697239819", address: client1Address)

print(client1)
print(client1.address.street)

// Extra Code

struct Student {
  var firstName: String
  var lastName: String
  var grade: Int
  
  static var minimiumGrade: Int = 50
  
  func getPassStatus() -> Bool {
    return self.grade >= Student.minimiumGrade
  }
  
  mutating func earnExtraCredit() {
    self.grade += 10
  }
}

var student1: Student = .init(firstName: "Giovanna", lastName: "Moeller", grade: 99)
var student2 = Student(firstName: "John", lastName: "Doe", grade: 64)

student1.getPassStatus()
student2.getPassStatus()
student2.earnExtraCredit()

var student3 = student2
student3.firstName = "Gigi"
student3.firstName
student2.firstName // Since structs are value type, the names are different

struct Classroom {
  let subject: String
  let students: [Student]
  
  func getHighestGrade() -> Student {
    
    var higher = 0
    var highestGradeFromStudent: Student = students[0]
    
    for student in students {
      if student.grade >= higher {
        higher = student.grade
        highestGradeFromStudent = student
      }
    } // We could also create a grades array, append to it every student grade and then return grades.max()
    return highestGradeFromStudent
  }
}

let classroom = Classroom(subject: "Maths", students: [student1, student2])
classroom.getHighestGrade().firstName
