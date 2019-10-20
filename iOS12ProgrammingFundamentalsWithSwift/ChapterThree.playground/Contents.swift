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
