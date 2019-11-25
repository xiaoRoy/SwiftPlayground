import UIKit

class Quadruped {
    func walk() {
        print("walk")
    }
}

class Cat : Quadruped {
    
}

class Kitten : Cat {
    
}

class Dog : Quadruped {
    func bark() {
        print("wolf")
    }
    
    func barkAt(cat: Kitten) {
        
    }
    
    func runWith(thing: String) {
        
    }
    
    
}

class NoisyDog : Dog {
    override func bark() {
        for _ in 1...3 {
            super.bark()
        }
    }
    
    //a parameter may be overridden with a superclass
    override func barkAt(cat: Cat) {
        
    }
}

class NotNosiyDog: Dog {
    // a parameter may be overridden with an Optional wrapping its type
    override func barkAt(cat: Kitten?) {
        
    }
    
    override func runWith(thing: String?) {
        
    }
}

let notNosiyDog = NotNosiyDog()
notNosiyDog.barkAt(cat: nil)
