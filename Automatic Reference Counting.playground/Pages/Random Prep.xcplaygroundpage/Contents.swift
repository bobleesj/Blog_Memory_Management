class User {
  var name: String
  
  init(name: String) {
    self.name = name
    print("User \(name) is initialized")
  }
  
  deinit {
    print("User \(name) is being deallocated")
  }
}

let user1 = User(name: "John")

// 1. Allocation
// 2. Initialization 
// 3. Usage
// 4. Deinitialization
// 5. Deallocation 

// Memory Leaks is when unused objects stay alive indefinitely 


// Unowned and Weak Differences 
// A weak reference is always optional and automatically becomes nil when deinit 
// You have to enter "var" for you to compile 

// Unowned, never optionals, 

// ARC is like magic: it's like your heart pumping

// Heart and Human when two strong references each other, you can't 


// In Swift, strong reference is default

class Kraken {
  var user: User = User(name: "Bob")
}


// Kraken holds a strong reference to user 


// Closures are like first class citizen and it's like class
// It captures values inside of them 


// you put self, so that closures get run at some point in the future. 
// Inside the retain cycle in, self, becomes 
// Outside, you can deallocate and becomes zero 

// Weak reference, do not increase the retain count to one 
// When they are used in closures, it's optionals 

import UIKit

class KarkenFace: UIView {
  @IBOutlet weak var razorSharpTeeht: UIView!
}

// [weak self] in 
// It's just an array, it's just a capture list 
// You can capture as many things you want. 


// "Self" is used to tell you that it's way for you to know it's captured strongly

// Weak is dependent on Strong reference 
// Weak with strong, it will be dellocated immediately 

// Mutually depedent: use onwoned reference 
// they behave like weak, unowned also doesn't increase reference count
// Weak will nullify the pointer, it will not nullify the pointer, 
// It's a little bit safer. When used in closures, it uses like implicitly unwrapped optionals 
//



// As with strong reference cycles between two class instances, 
// you declare each captured reference to be a weak or unowned reference rather than a strong reference.

 // but it can never be nil after initialization.If you try to access an unowned reference when the object it references is deallocated it will cause a runtime error.

class HTMLElement {
  
  let name: String
  let text: String?
  
  lazy var asHTML: () -> String = {
    [unowned self] in
    if let text = self.text {
      return "<\(self.name)>\(text)</\(self.name)>"
    } else {
      return "<\(self.name) />"
    }
  }
  
  init(name: String, text: String? = nil) {
    self.name = name
    self.text = text
  }
  
  deinit {
    print("\(name) is being deinitialized")
  }
  
}




// Reference Counting = 0, release 
//



