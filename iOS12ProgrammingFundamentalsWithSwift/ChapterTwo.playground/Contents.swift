import UIKit

func sum(_ one: Int, _ another: Int) -> Int {
    return one + another
}

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
