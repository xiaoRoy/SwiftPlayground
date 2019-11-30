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



class Book {
    let id: String
    let pageCount: Int
    let language: String
    
    init(id: String, pageCount: Int, language:String) {
        self.id = id
        self.pageCount = pageCount
        self.language = language
    }
    
    
}
//example shows that subclass only has convenience initializer
class EnglishBook : Book {
    convenience init(id: String, pageCount: Int) {
        self.init(id: id, pageCount: pageCount, language: "English")
    }
}

let englishBook = EnglishBook(id: "123", pageCount: 232)

//end



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
    
    init(id: String, x: Double, y: Double){
        self.x = x
        self.y = y
        super.init(id: id, name: "Point")
    }
    
    //Override a convenience initializers as a convenience initializer
    convenience init(id: String) {
        self.init(id: id, x: 0.0, y: 0.0)
    }
}

let pointA = Point(id: "123")

class Circle : Shape {
    
    var radius: Double
    
    init(id: String, radius: Double) {
        self.radius = radius
        super.init(id: id, name: "Circle")
    }
}

class Rectangle : Shape {
    var width: Double
    var height: Double
    
    //Override a convenience initializer as a designated initializer
    init(id: String) {
        self.width = 4
        self.height = 5
        super.init(id: id, name: "Rectangle")
    }
    
    init(id: String, width: Double, height: Double) {
        self.width = width
        self.height = height
        super.init(id: id, name: "Rectangle")
    }
}

class Square : Rectangle {
    
    //Override a designated initializer as a designated initializer
    override init(id: String, width: Double, height: Double) {
        super.init(id: id, width: width, height: height)
        if width != height {
            self.width = self.height
        }
    }
    
    //Override a designated initializer as a convenience initializer
    override convenience init(id: String) {
        self.init(id: id, width: 4, height: 4)
    }
}


class Sport {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Football : Sport {
    init() {
        super.init(name: "Football")
    }
}

class Fruit {
    
    let name: String
    
    required init(name: String) {
        self.name = name
    }
}

class Apple : Fruit {
    
    var weight: Double = 0.0
    
    init(weight: Double) {
        self.weight = weight
        super.init(name: "Apple")
    }
    
    required init(name: String) {
        super.init(name: name)
    }
}
