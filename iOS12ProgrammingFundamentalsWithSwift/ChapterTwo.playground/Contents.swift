import UIKit

@discardableResult
func sum(_ one: Int, _ another: Int) -> Int {
    return one + another
}
_ = sum(3, 4)
func say1(_ text: String) {
    print(text)
}

func say2(_ text: String) -> () {
    print(text)
}

func say3(_ text: String) -> Void {
    print(text)
}

func concatSringSupressExternalParamter(_ string: String, times: Int) -> String{
    var reslut = ""
    for _ in 1...times {
        reslut += string
    }
    return reslut
}

let firstResult = concatSringSupressExternalParamter("hi", times: 5)

func concat(stirng s: String, times n : Int) -> String {
    var result = ""
    for _ in 1...n {
        result += s
    }
    return result
}

let secondResult = concat(stirng: "hello", times: 5)

class Person {
    func say(_ what: String) {
        print(what)
    }
    
    func say(_ what: Int) {
        print(what)
    }
    
    func say() -> Int {
        return 44
    }
    
    func say() -> String {
        return "one"
    }
    
    func say(text: String, times n : Int = 1) {
        for _ in 1...n {
            print(text)
        }
    }
    
    func say(aLot stringArray: String ...) {
        for text in stringArray {
            print(text)
        }
    }
    
    func say(_ message: String, times: Int, loudly _: Bool) {
        for _ in 1...times {
            print(message)
        }
    }
}

let person = Person()
person.say(aLot: "hi", "hello", "How are you")

print("hello", 3, true)

print("Manny", "Moe", separator:", ", terminator:", ")
print("Jack")

func removeCharacter(_ char: Character, from text: String) -> Int {
    //no problem
    var text = text
    var howMany = 0
    while let index = text.firstIndex(of: char) {
        text.remove(at: index)
        howMany += 1
    }
    return howMany
}

func removeCharacterChangingParam(_ char: Character, from text: inout String) -> Int {
    var howMany = 0
    while let index = text.firstIndex(of: char) {
        text.remove(at: index)
        howMany += 1
    }
    return howMany
}

var willChange = "hello"
removeCharacterChangingParam("l", from: &willChange)

class NumberRule{
    var shouldVarify: Bool = false
    
    func isMatch(number: Int) -> Bool {
        func checkNumber(_ number: Int) -> Bool{
            let bigNumber = number * number - 44
            return bigNumber > 100 && bigNumber.description.contains("1")
        }
        return !shouldVarify && checkNumber(number)
    }
}

func countDown(from number: Int) {
    print(number)
    if number > 0 {
        countDown(from: number - 1)
    }
}

func perform(action: () -> ()) {
    action()
}

func animate(withDuration time: Float, animations whatToAnimate: () -> (), completion whatToDoLater: (Bool) -> ()) {
    whatToAnimate()
    whatToDoLater(true)
}

animate(withDuration: 0.4,
        animations: {
            () -> () in
            print("running animation")
},
        completion: {
            (finished: Bool) -> () in
            if finished {
                print("Animation is finished")
            }
}
)

// omit the return type
animate(withDuration: 0.4,
        animations: {
            () in
            print("running animation")},
        completion: {
            (finished: Bool) in
            if finished {
                print("Animation is finished")
            }}
)

//omit the in expression
animate(withDuration: 0.4,
        animations: {
            print("running animation")
            
        },
        completion: {
            (finished: Bool) in
            if finished {
                print("Animation is finished")
        }}
)

//omit the parameter type
animate(withDuration: 0.4,
        animations: {
            print("running animation")
        },
        completion: {
            (finished) in
            if finished {
                print("Animation is finished")
        }}
)

//omit the parentheses
animate(withDuration: 0.4,
        animations: {
            print("running animation")
        },
        completion: {
            finished in
            if finished {
                print("Animation is finished")
        }}
)

//omit the in even when there are parameters
animate(withDuration: 0.4,
        animations: {
            print("running animation")
        },
        completion: {
            if $0 {
                print("Animation is finished")
            }
        }
)

//omit the paramter name
animate(withDuration: 0.4,
        animations: {
            print("running animation")
        },
        completion: {
            _ in
            print("Animation is finished")
        }
)

//trailing function
animate(withDuration: 0.4,
        animations: {
            print("running animation")
}) {
    _ in
    print("Animation is finished")
}

//omit calling function parentheses
perform {
    print("omit calling function parentheses")
}

//omit the retrun
func performThenShow(action: (Int, Int) -> Int) {
    let result = action(1, 2)
    print(result)
}

performThenShow {
    one, another in
    one + another
}

let numbers = [1, 2, 3]

let resultNumbersAnother = numbers.map({
    (one: Int) -> Int in
    return one * 2
})
let resultNumbers = numbers.map { $0 * 2 }
