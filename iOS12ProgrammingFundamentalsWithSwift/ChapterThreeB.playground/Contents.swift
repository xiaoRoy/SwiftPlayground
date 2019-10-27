import UIKit

//tuple

let pair: (Int, String) = (1, "two")
let pairB = (1, "two")

let (first, second) = (1, "two")
let(_, anotherSecond) = pair

let message = "hello world"
for(index, char) in message.enumerated() {
    print("index:\(index), char:\(char)")
}

for tuple in message.enumerated() {
    print("index:\(tuple.offset), char:\(tuple.offset)")
}

pair.0

let pairC: (first: Int, second: String) = (2, "three")
var pairD = (first: 2, second: "three")
pairD.first = 3

func tupleMaker() -> (first: Int, second: String) {
    return (3, "four")
}
let result = tupleMaker().second

typealias Point = (x: Int, y: Int)

//Optional

var stringMaybe = Optional("howdy")
stringMaybe = "how are you"

var stringMaybeB: String? = "howdy"

func show(message: String) {
    print(message)
}

let what: String? = "abc"
show(message: what!)
let upperWhat = what!.uppercased()

let stringMaybeC: String! = "why"
show(message: stringMaybeC)


