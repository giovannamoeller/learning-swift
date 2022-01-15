import UIKit

// Classes can inherit from each other, so class B has all things class A has, with a few extras. This means that you can treat B as type A or B.

class Album {
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func getPerformance() -> String {
    return "The album \(name) sold lots"
  }
}

class StudioAlbum: Album {
  var studio: String
  
  init(name: String, studio: String) {
    self.studio = studio
    super.init(name: name)
  }
  
  override func getPerformance() -> String {
    return "The Studio Album \(name) sold lots"
  }
}

class LiveAlbum: Album {
  var location: String
  
  init(name: String, location: String) {
    self.location = location
    super.init(name: name)
  }
  
  override func getPerformance() -> String {
    return "The Live Album \(name) sold lots"
  }
}

// Because any instance of LiveAlbum or StudioAlbum is inherited from Album, it can be treated just as either Album ou LiveAlbum/StudioAlbum, both at the same time. This is called "Polymorphism"

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio:
                                "The Castles Studios")

var fearless = StudioAlbum(name: "Speak Now", studio:
                            "Aimeeland Studio")

var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo",
                           location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]


for album in allAlbums {
  print(album.getPerformance())
  // Automatically use the override verson of the function depending on the subclass in question. That's polymorphism in action: an object can work as its class and its parent class, all at the same time
}

// MARK: Converting types with Typecasting

// Converting an object of one type to another

// as? -> optional downcasting -> "I think this conversion might be true, but it might fail"
// as! -> forced downcasting -> "I know this conversion is true, and I'm happy for my app to crash if I'm wrong."

for album in allAlbums {
  if let studioAlbum = album as? StudioAlbum {
    print(studioAlbum.studio)
  } else if let liveAlbum = album as? LiveAlbum {
    print(liveAlbum.location)
  }
}

// When we say convertion we don't actually mean it. It's just converting how Swift treats the object

var allStudioAlbums: [Album] = [taylorSwift, fearless]

for album in allStudioAlbums {
  let studioAlbum = album as! StudioAlbum // Because we know this array only has StudioAlbum type, we can use forced downcasting
  print(studioAlbum.studio)
}

// Or also:
for album in allStudioAlbums as! [StudioAlbum] {
  print(album.studio)
}

// Optional downcasting at the array level:

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
  print(album.location)
}
/* “try to convert allAlbums to be an array of LiveAlbum objects, but if that
fails just create an empty array of live albums and use that instead” – i.e., do nothing. */

// MARK: Converting common types with initializers

let number = 5
// let text = number as! String -> You can't force an integer into a string, they're different types

let text = String(number)
print(text)
