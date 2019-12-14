import UIKit

class Shape {
    
    func showInfo() {
        print("Shape")
    }
    
    
    func showMoreInfo() {
        self.showInfo()
    }
    
    static func showInfo(shape: Shape) {
        shape.showInfo()
    }
}

class Circle : Shape {
    
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
        //If a designated initializer doesn’t call super.init(...), then super.init() is called implicitly if possible.(P165)
        super.init()
    }
    
    override func showInfo() {
        print("Circle")
    }
    
    func calculateArea() -> Double {
        return Double.pi * pow(radius, 2)
    }
}

let shape: Shape = Circle(radius: 4)

Shape.showInfo(shape: shape)
shape.showMoreInfo()

let circle = shape as! Circle
circle.calculateArea()

if shape is Circle {
    let circleB = shape as! Circle
    circleB.calculateArea()
}

let circleC = shape as? Circle
circleC?.calculateArea()
let areaCircle = (shape as? Circle)?.calculateArea()

let shapeB: Shape? = Circle(radius: 4)
if shapeB is Circle {
    (shapeB as! Circle).calculateArea()
}

(shapeB as? Circle)?.calculateArea()

let textA: NSString = "what"
let textB: String = "where"
let textC: NSString = textB as NSString
//
//UIViewController()
//
//let userDefault = UserDefaults.standard
//let textD = "how"
//userDefault.set(textD, forKey: "greeting")


class Dog {
    class var whatDogSays : String {
        return "woof"
    }
    
    func back() {
        print(type(of: self).whatDogSays)
    }
}

class NoisyDog : Dog {
    override class var whatDogSays : String {
        return "woof woof woof"
    }
}


func exceptTypeOf(dogType: Dog.Type) {
    
}

exceptTypeOf(dogType: Dog.self)
exceptTypeOf(dogType: type(of: Dog()))

exceptTypeOf(dogType: NoisyDog.self)
exceptTypeOf(dogType: type(of: NoisyDog()))
