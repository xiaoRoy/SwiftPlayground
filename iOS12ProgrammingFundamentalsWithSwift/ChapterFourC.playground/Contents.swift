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

class Invitation {
    var id: String = "a123"
    
    init(id: String) {
        self.id = id
    }
}

let invitation = Invitation(id: "b231")
//let invitationA = Invitation() compiler error

class Order {
    var id: String = ""
    
    convenience init(id: String) {
        self.init()
        self.id = id
    }
}

let orderA = Order(id: "123")
let orderB = Order()

class Car {
    
    let id: String
    let brand: String
    
    init(id: String, brand: String) {
        self.id = id
        self.brand = brand
    }
    
    convenience init(id: String) {
        self.init(id: id, brand: "BMW")
    }
}
