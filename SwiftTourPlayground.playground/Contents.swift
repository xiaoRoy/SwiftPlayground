import UIKit

var str = "Hello, playground"


// Hello World
print("Hello World!")

//Simple Value
var myVariable = 42
myVariable = 50
let myConstant = 45

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70.0
let explicitFlot: Float = 4

let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let appleSummary = "I have \(apples) applses."
let oranges = 5
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

let quotation = """
Even though there's whitespace to the left,
the actual lines aren't indented.
Except for this line.
Double quotes (") can appear without being escaped.

I still have \(apples + oranges) pieces of fruit.
"""


var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm" : "Captain",
    "Kaylee" : "Mechanic"
]
occupations["Jayne"] = "Public Relations"

shoppingList.append("blue paint")
print(shoppingList)

let emptyArray = [String]()
let emptyDictionary = [String:Float]()

// Control Flow
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)

var optionalSring: String? = "Hello World"
print(optionalSring == nil)

var optionalName: String? = "Smith"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
print(greeting)

var nilOptionalName: String? = nil
var anotherGretting = "Hi!"
if let name = nilOptionalName {
    anotherGretting = "Hi! \(name)"
}
print(anotherGretting)

let nickname: String? = nil
let fullname = "Mary Jane"
let niceGreeting = "Hi \(nickname ?? fullname)"

let vegatable = "red peper"
switch vegatable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let what where what.hasSuffix("peper"):
    print("Is it a spicy \(what)?")
default:
    print("Everything tastes good in soup.")
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
var largestKind = "Prime"
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
    }
}
print(largest)
print(largestKind)

var amount = 2
while amount < 100 {
    amount *= 2
}

var anotherAmount = 2
repeat {
    anotherAmount *= 2
} while anotherAmount < 100

var total = 0
for index in 0..<4 {
    total += index
}
