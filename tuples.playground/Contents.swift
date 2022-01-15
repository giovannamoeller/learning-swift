import UIKit

var greeting = "Hello, playground"

let studentMark: (String, Int) = ("Giovanna", 99)
studentMark.0
studentMark.1

let studentData = (name: "Giovanna", mark: 49, petName: "Binha")
// let studentData: (name: String, mark: Int, petName: String) = ()
studentData.name
studentData.mark
studentData.petName

let (name, mark, petName) = studentData // destructuring
// let (_, _, petName) = studentData
name
mark
petName
