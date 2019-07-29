import UIKit

let sum = 1 + 2

let sumDescription = sum.description

extension Int {
    func sayHello() {
        print("Hello, I'm \(self)")
    }
}

sum.sayHello()

class Student {
    func showBook() {
        print(Book())
    }
    
    func showSum() {
        print(sum)
    }
    
    func inside() {
        print(Inside())
    }
    
    class Inside{
    
    }
}

class Book {
    class Inside {
        func what() {
            let what = Student.Inside()
            print(what)
        }
    }
}

class Dog {
    var name = ""
    
    private var whatDogSays = "woof"
    
    func bark() {
        print(whatDogSays)
    }
    
    func speak() {
        self.bark()
        print("what")
    }
}
