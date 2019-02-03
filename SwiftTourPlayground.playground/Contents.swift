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
