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


