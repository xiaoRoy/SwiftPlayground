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


//Properties
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

class Book {
    var name:String =  "Test"
    var pageCount = {
        () -> Int in
        print("pageCount")
        return 1
    }()
    var info: String {
        return "Book info:\(self.name) has page count \(self.pageCount)"
    }
}

let bookA = Book()

class Guest {
    var firstName: String
    var lastName: String
    
    var fullNameA: String
    var fullNameB: String {
        return "\(self.firstName) \(self.lastName)"
    }
    lazy var fullNameC: String = "\(self.firstName) \(self.lastName)"
    lazy var fullNameD: String = {
        return "\(self.firstName) \(self.lastName)"
    }()
    lazy var fullNameE: String = self.makeFullName()
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        fullNameA = "\(firstName) \(lastName)"
    }
    
    private func makeFullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}

struct Greeting {
    static let friendly = "hello there"
    static let hostile = "go away"
    static let ambivalent = friendly + "but" + hostile
    static let ambivalentA = Greeting.friendly + "but" + Greeting.hostile
    static var ambivalentB: String {
        return self.friendly + "but" + Greeting.hostile
    }
    static let ambivalentC = {
        return Greeting.friendly + "but" + Greeting.hostile
    }()
    
    static func beFriendly() {
        print(self.friendly)
    }
}

//Methods
class Bird {
    static let whatBirdSay = "zhi"
    let id: Int
    let name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    func fly() {
        print("\(self.name) is flying.")
    }
}

class Container {
    var stored = ""
    func store(thing: String) {
        stored = thing
    }
}

let container = Container()
let storeAction = Container.store(container)
storeAction("some thing")
print(container.stored)



struct Apple {
}

enum Phone{
}


