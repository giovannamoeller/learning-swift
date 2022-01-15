import UIKit

let json = """
  [
      {
          "name": "Giovanna",
          "age": 21,
          "profession": "Desenvolvedora"
      },
      {
          "name": "Ana",
          "age": 25,
          "profession": "Designer"
      }
  ]
"""

let dataDecode = Data(json.utf8)

struct Person: Codable {
  var name: String
  var age: Int
  var profession: String
}

let person = Person(name: "Giovanna", age: 21, profession: "Developer")

let decoder = JSONDecoder()
let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

do {
  let people = try decoder.decode([Person].self, from: dataDecode)
  print(people[0].name)
  print(people.count)
} catch {
  print("Error: Decodable")
}

do {
  let dataEncode = try encoder.encode(person)
  print(String(data: dataEncode, encoding: .utf8)!)
} catch {
  print("Error: Encodable")
}


