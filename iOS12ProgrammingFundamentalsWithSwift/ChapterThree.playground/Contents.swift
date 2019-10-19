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
