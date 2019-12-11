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
    
    override func showInfo() {
        print("Circle")
    }
}

let shape: Shape = Circle()

Shape.showInfo(shape: shape)
shape.showMoreInfo()
