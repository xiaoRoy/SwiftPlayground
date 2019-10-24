import UIKit


//Variable Scope and Lifetime

class Dog {
    static let tag = "Dog"
    
    func bark() {
        //smelly code
        let one: Int
    }
}


//Variable Declaration
var numberOne: Int

var numberTwo = 2

var numberThree: Int = 3

let numberFour: Int


class TaskIdentifier {
    
}

func beginTask(expirationHandler handler: (() -> Void)? = nil)
    -> TaskIdentifier {
        // do something
        return TaskIdentifier()
}

func endTask(_ taskIdentifier: TaskIdentifier) {
    // clean up
}

let taskIdentifier = beginTask(expirationHandler: {
    () -> Void in
    // endTask(taskIdentifier) Variable used within its own initial value
})

var taskIdentifierB = beginTask {
    // endTask(taskIdentifierB) Variable used within its own initial value
}



var taskIdentifierC = TaskIdentifier()
taskIdentifierC = beginTask {
    endTask(taskIdentifierC)
}

//Computed Initializer
let value = {
    3
}()

let shouldGo: Bool =  {
    if value == 1 {
        return true
    } else {
        return false
    }
}()

class Author {
    var name: String = ""
    var country: String = ""
}

class Info {
    var pageCount: Int = 0
    var price: Double = 0.0
}

class Book {
    let author: Author = {
        () -> Author in
        let author: Author = Author()
        author.name = "JK"
        author.country = "UK"
        return author
    }()
    
    
    //let info: Info = self.findInfo()  it is not legal to declare an instance method and initialize the instance property by calling that method
    
    func findInfo() -> Info {
        return Info()
    }
}

//Computed Variables

var now: String {
    get {
        return Date().description
    }
    set {
        print(newValue)
    }
}

now = "not now"
print(now)

var anotherNow: String {
    get {
        return Date().description
    }
    set(anotherValue) {
        print(anotherValue)
    }
}

var nowOnlyGetter: String {
    return Date().description
}

class Data {}

class BackgroundHandler {
    
    private static var what = ""
//    class var storedClassProp = "class property not OK"
    private var _cachedData: Data! = nil
    
    var cachedData: Data  {
        set (newData) {
            self._cachedData = newData
        }
        
        get {
            if _cachedData == nil {
                // get from the disk
                self._cachedData = Data() // mock get from the data
            }
            return self._cachedData
        }
    }
}

//Setter Observers
var message: String = "Hello World!" {
    willSet {
        print("oldValue:\(message)")
        print("newValue:\(newValue)")
    }
    
    didSet {
        print("oldValue:\(oldValue)")
        print("newValue:\(message)")
    }
}

message = "hi"

//Lazy Initialization
class DBManager {
    static let sharedSingleton = DBManager()
}

//Built-In Simple Types

///Bool
var checked = false
checked.toggle()
print(checked)

///Numbers
let aBinay = 0b1001_1100
let aOctal = 0o1234_5670
let aHex = 0x1234_abcd
let exponetOfTen = 3e2 // 300

///Numeric coercion
let intA = 10
let doubleA = Double(intA) // 10.0

let doubleB = 3.44
let intB = Int(doubleB) // 3

let doubleC: Double = 10 // it is legal.
let intC = 12
//let doubleD: Double = intC // it is not lagel

let doubleD = 10 / 3.0 //3.33333

let intD = 10
let doubleE = 3.0
//let doubleF = intD / doubleE
let doubleF = Double(intD) / doubleE


let int16A: Int16 = 128
//let int8A: Int8 = Int8(int16A) // it could be compoled but it will crash at runtime.

let int8B: Int8? = Int8(exactly: 128)
let int8C: Int8 = Int8(clamping: int16A)

//let overFlow = Int.max - 2 + 12 / 2 // runtime crash
let (result, overflow) = Int.max.addingReportingOverflow(12)

let randomResult = Int.random(in: 1...10)

//String
let multipleLines = """
    Line 1

        Line 2
    Line 3

    """
let multipleLinesB = """
    Line "1"
        Line 2 \
    and this still Line 2
"""
print(multipleLinesB)

let numberOfApples = 5
let messageA = "You have \(numberOfApples) apples"

var hello = "hello"
let world = "world"
let messageB = hello + world

hello += world
print(hello)

var helloA = "hello"
helloA.append("world")
print(helloA)

let messageC = ["hello", "world"].joined(separator: "")

let numberA = 7
let numberAInString = String(7)

let numberB = 31
let numberBInString = String(31, radix: 16)

let numberCInString = "31"
let numberC: Int? = Int(numberCInString)

let numberDInString = "1f"
let numberD = Int(numberDInString, radix: 16)
