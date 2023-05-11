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
