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
    
//    init(id: String) {
//        self.id = id
//        self.brand = "BMW"
//    }
}

class Shape {
    let id: String
    let name: String
    
    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
    
    convenience init(id: String) {
        self.init(id: id, name: "Shape")
    }
}

class Point : Shape {
    var x: Double
    var y: Double
    
//    convenience init() {
//        self.init(id: "id", name: "name")
//    }
    
    
//    convenience init(id: String) {
//        self.init(id: id, name: "name")
//        x = 0.0
//        y = 0.0
//    }
    
    convenience init(id: String, x: Double, y: Double) {
        self.init(id: id, name: "Circle")
        self.x = x
        self.y = y
    }
}

//let pointA = Point(id: "123", name: "Circle")

class Circle : Shape {
    
    var radius: Double
    
    init(id: String, radius: Double) {
        self.radius = radius
        super.init(id: id, name: "Circle")
    }
}
