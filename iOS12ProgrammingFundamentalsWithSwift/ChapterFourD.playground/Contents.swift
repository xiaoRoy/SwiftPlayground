import UIKit

class Vehicle {
    
    var name = "Vehile"
    
    var currentSpeed = 0.0
    
    var description: String {
        get {
            return "traveling at \(currentSpeed) miles per hour"
        }
    }
    
    func makeNosie () {
        
    }
}

class Car : Vehicle {
    
    var gear = 1
    
    
    // property that overrides a stored property
    // must have both a getter and setter
    override var name: String {
        get {
            return super.name
        }
        
        set(value) {
            super.name = value.uppercased()
        }
    }
    
    //
    override var description: String {
        get {
            return super.description + "in gear \(gear)"
        }
    }
}

class AutomaticCar : Car {
    
    //add property observers to an inherited property.
    override var currentSpeed: Double {
        didSet {
            self.gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

class Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        get {
            return width * height
        }
    }
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
}

class Square : Rectangle {
    
    //If the superclass property has no setter,
    //the override can add one.
    override var area: Double {
        get {
            return super.area
        }
        
        set {
            let newWidth = sqrt(newValue)
            self.width = newWidth
            self.height = newWidth
        }
    }
}

class SquareWithLog : Square {
    
    override var area: Double {
        get {
            print("getArea")
            return super.area
        }
        
        set {
            print("setArea")
            super.area = newValue
        }
    }
}

let square = SquareWithLog(width: 3, height: 3)
square.area = 16
square.area


class Dog {
    class func whatDogSay() -> String {
        print("Dog")
        return "woof"
    }
    
    func bark() {
        print(Dog.whatDogSay())
    }
}

class NoisyDog : Dog {
    override class func whatDogSay() -> String {
        print("NoisyDog")
        return "woof Woof"
    }
}

class GoodDog : Dog {
    override static func whatDogSay() -> String {
        return "woof good"
    }
}

let noisyDog: Dog = NoisyDog()
noisyDog.bark()

class Book {
    class var language: String {
        get {
            return "Unknown"
        }
    }
}

class ChineseBook : Book {
    override class var language: String {
        return "Chinses"
    }
}

class EnglishBook : Book {
    override static var language: String {
        return "English"
    }
}
