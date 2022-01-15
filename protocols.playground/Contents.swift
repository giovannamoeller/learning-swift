import UIKit

// Protocols define a set of methods and properties that a type must implement if it says it conforms to the protocol. We don't care about how it's implemented, only if it's implemented

protocol Employee {
  var name: String { get set }
  var jobTitle: String { get set }
  func doWork()
}

struct Executive: Employee {
  var name: String
  var jobTitle: String
  
  func doWork() {
    print("I'm strategizing!")
  }
}

let executive = Executive(name: "Steve Jobs", jobTitle: "CEO")

struct Manager: Employee {
  var name: String
  var jobTitle: String
  
  func doWork() {
    print("I'm turning it off and on again!")
  }
}

let manager = Manager(name: "Giovanna Moeller", jobTitle: "Developer")

let staff: [Employee] = [executive, manager]

for person in staff {
  person.doWork()
}

/* Because both types conform to Employee – they implement the properties and methods of that
 protocol – we can create an employee array and use the objects inside that array without know
 what their actual type is.
 */
