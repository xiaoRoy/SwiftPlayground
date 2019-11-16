import UIKit

class Dog {
    var name: String
    var license: Int
    
//    init(name: String) {
//        self.name = name
//    }
//
//    init(license: Int) {
//        self.license = license
//    }
    
    init(name: String = "", license: Int = 0) {
        self.name = name
        self.license = license
    }
}
let dogA = Dog(name: "dogA")

struct Cat{
    var name: String
    var license: Int
    
    init(name: String, license: Int) {
        self.name = name
        //meow() 'self' used before all stored properties are initialized
        self.license = license
        meow()
    }
    
    func meow() -> Void {
        print("meow")
    }
}

struct Digit {
    var number: Int
    var meaningOfLife: Bool
    
    init(number: Int) {
        self.number = number
        self.meaningOfLife = false
    }
    
    init() {
        self.init(number: 42)
        self.meaningOfLife = true
    }
}

class OptionalDog {
    var name: String
    let license: Int
    init?(name: String, license: Int) {
        if name.isEmpty {
            return nil
        }
        if license < 0 {
            return nil
        }
        self.name = name
        self.license = license
    }
    
}

struct Apple {
}

enum Phone{
}


