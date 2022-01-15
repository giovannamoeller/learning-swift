import UIKit

typealias Student = (String, Int) -> String

typealias Operate = (Int, Int) -> Int

func printGrade(student: Student) {
  print(student("Giovanna", 21))
}

printGrade { name, grade in
  "The student \(name) got a grade of \(grade)."
}

func printResult(operate: Operate, _ a: Int, _ b: Int) {
  let result = operate(a, b)
  print(result)
}

printResult(operate: { a, b in
  a + b
}, 2, 3)


