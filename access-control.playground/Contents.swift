import UIKit

var greeting = "Hello, playground"

// Let's you specify what data inside structs and classes should be explosed

/*
 Public: everyone can read and write the property
 Internal: only your Swift code can read and write the property. If you ship your code as a framework to others use, they won't be able to read the property (default level)
 File Private: only Swift code in the same file as the type can read and write the property.
 Private: most restrictive option, the property is available only inside methods that belong to the type, or extensions
 */

struct Person {
  private var name: String
  
  init(name: String) {
    self.name = name
  }
}

let giovanna = Person(name: "Giovanna")
// giovanna.name : Inacessible due to 'private' protection level

struct Cat {
  internal let color = "Black"
  fileprivate var age: Int = 2
  private var type = "Ragdoll"
  
  public func speak() {
    print("Meeeeoooowww")
  }
}

let scrambles = Cat()

// Could call this from other modules
scrambles.speak()

// Could call this from anywhere within the module
print(scrambles.color)

// Can call this only within this file
print(scrambles.age)

// This is invalid because type is inaccessible outside of the Cat structure
//print(scrambles.type)

