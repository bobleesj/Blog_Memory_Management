

class Passport {
  var human: Human?
  let citizenship: String
  init(citizenship: String) {
    self.citizenship = citizenship
    print("You've created an object")
  }
  
  deinit {
    print("I, papepr, am gone")
  }
}

Passport(citizenship: "Bobby")


var myPassPort: Passport? = Passport(citizenship: "Republic of Korea")

myPassPort = nil


class Human {
  var passport: Passport?
  let name: String
  init(name: String) {
    self.name = name
  }
  deinit {
    print("I'm gone, friends")
  }
}


var bob: Human? = Human(name: "Bob Lee")


myPassPort = nil
bob = nil


var newPassport: Passport? = Passport(citizenship: "South Korea")
var bobby: Human? = Human(name: "Bob the Developer")

bobby?.passport = newPassport
newPassport?.human = bobby

// Deinitialization // Deallocate

newPassport = nil
bobby = nil







