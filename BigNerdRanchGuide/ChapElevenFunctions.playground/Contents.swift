import Cocoa

func divisionDescriptionFor(numerator: Double, denominator: Double) -> Double {
    return numerator / denominator
}
//divisionDescriptionFor(numerator: 0.0, denominator: 0.0)

func showDivisionResultFor(numerator: Double, denominator: Double, withPunctuation punctuation: String = ".") {
    let result = divisionDescriptionFor(numerator: numerator, denominator: denominator)
    print("\(numerator) divided by \(denominator) is \(result)\(punctuation)")
}
//showDivisionResultFor(numerator: 0.22, denominator: Double.pi)

//in-out parameters
var error = "The request failed:"

func appendError(code: Int, to errorMessage: inout String) {
    if code == 400 {
        errorMessage += " bad request"
    }
}
appendError(code: 400, to: &error)

//Nested Function Definitaions and Scope

func calculateAreaOfTriangleWith(base: Double,height: Double) -> Double {
    let rectangle = base * height
    
    func divideByTwo() -> Double {
        return rectangle / 2
    }
    
    return divideByTwo()
}
calculateAreaOfTriangleWith(base: 10, height: 23)

//Multiple Returns
func sortEvenOddNumbers(_ numbers: [Int]) -> ([Int], [Int]) {
   return sortNumbers(numbers)
}

func sortEvenOddNumbersB(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    return sortNumbers(numbers)
}

private func sortNumbers(_ numbers: [Int]) -> ([Int], [Int]) {
    var evens = [Int]()
    var odds = Array<Int>()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}


//Optional Return Types

func grabMiddleName(fromFullName name: String) -> String? {
    
    let names = name.split(separator: " ")
    var middleName: String?
    if names.count == 3 {
        middleName = String(names[1])
    }
    
    return middleName
}

grabMiddleName(fromFullName: "Adam Geogre Green")

//Exiting Early from a Function

func displayMiddleName(inFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("No middle name!")
        return
    }
    
    print("The middle name is \(middleName)")
    
}
//displayMiddleName(inFullName: ("Luke", "Harry", "Ron"))


func displayMiddleNameB(fullName name:(first: String, middle: String?, last: String)) {
    
    if let middleName = name.middle  {
        print("The middle name is \(middleName)")
    } else {
        print("No middle name!")
    }

}
//displayMiddleNameB(fullName: ("Luke", "Harry", "Ron"))


//Bronze Challenge
func displayMiddleNameC(fullName name:(first: String, middle: String?, last: String)) {
    
    guard let middleName = name.middle, let middleInitial = middleName.first, middleName.count > 10 else {
        print("Hey, there!")
        return
    }
    let greetingTo = "\(name.first) \(middleInitial). \(name.last)"
    print(greetingTo)
}

displayMiddleNameC(fullName: (first: "Alois", middle: "Rumpelstiltskin", last: "Chaz"))


//Function Types

let evenOddAction: ([Int]) -> ([Int], [Int]) = sortEvenOddNumbers(_:)

//Silver Challenge
func siftBeans(from groceryList: [String]) -> (beans: [String], otherGroceryies:Array<String>) {
    var beans:[String] = []
    var otherGroceries:[String] = []
    for bean in groceryList {
        if bean.hasPrefix("bean") {
            beans.append(bean)
        } else {
            otherGroceries.append(bean)
        }
    }
    return (beans, otherGroceries)
}
