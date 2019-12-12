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
