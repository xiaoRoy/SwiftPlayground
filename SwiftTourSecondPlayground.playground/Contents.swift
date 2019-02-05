import UIKit

//Object and Classes
class Shape {
    var name: String
    var numberOfSides = 0
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape(name: "Seven")
shape.numberOfSides = 7
var sides = shape.numberOfSides


class Square : Shape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name:name)
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

class Circle : Shape {
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A circle with raidus \(radius)"
    }
}

class EquilateralTriangle : Shape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var primeter: Double {
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
}

class TriangleAndSquare {
    var traiangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    var square: Square {
        willSet {
            traiangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        traiangle = EquilateralTriangle(sideLength: size, name: name)
        square = Square(sideLength: size, name: name)
    }
}

//Enumerations and Structures

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        var result: String
        switch self {
        case .ace:
            result = "ace"
            break
        case .jack:
            result = "jack"
            break
        case .queen:
            result = "queen"
            break
        case .king:
            result = "kind"
            break
        default:
            result = String(self.rawValue)
        }
        return result
    }
    
    static let allVaues = [ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king]
}

if let convertedRank = Rank(rawValue: 3) {
    convertedRank.simpleDescription()
}

enum Suit {
    case spades, hearts, dimonds, clubs
    
    func color() -> String {
        var result: String
        switch self {
        case .spades, .clubs:
            result = "black"
        default:
            result = "red"
        }
        return result
    }
    
    static let allValues = [spades, hearts, dimonds, clubs]
}

enum ServerResponse {
    case result(String, String)
    case failure(String)
    case noResponse(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheers")
let noResponse = ServerResponse.noResponse("Server is Down")

switch success {
case let .result(sunrise, sunset) :
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(messge) :
    print("Failure... \(messge)")
case let .noResponse(error) :
    print(error)
}

struct Card {
    var rank: Rank
    var suit: Suit
    
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit)"
    }
}

let threeOfSpades = Card(rank: .three, suit: .spades)
print(threeOfSpades.simpleDescription())

func fullCards() -> [Card] {
    var result = [Card]()
    for rank in Rank.allVaues {
        for suit in Suit.allValues {
            result.append(Card(rank: rank, suit: suit))
        }
    }
    return result
}

print(fullCards().count)
