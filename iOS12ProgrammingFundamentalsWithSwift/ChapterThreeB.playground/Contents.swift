import UIKit

//tuple

let pair: (Int, String) = (1, "two")
let pairB = (1, "two")

let (first, second) = (1, "two")
let(_, anotherSecond) = pair
print(first)

let one = 1
let two = 22
let (oneA, twoA) = (1, 22)

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

let stringMaybeC: String? = "why"

func getImplicitylyUnwrappedOptional() -> String! {
    return "abc"
}

let textA: String! = getImplicitylyUnwrappedOptional()
textA.uppercased()
let textB = getImplicitylyUnwrappedOptional() // implicit unwrapping does not propagate by assignment.
textB?.uppercased()

let textC: String = getImplicitylyUnwrappedOptional()! // unwrap the implicitly unwrapped Optional explicitly

var stringMaybeD: String? = nil

func testStringMaybe(message: String?) {
    if message == nil {
        print("message is nil")
    } else {
        print("message is not nil")
    }
}

var stringMaybeE: String?
testStringMaybe(message: stringMaybeE)

let stringMaybeF: String? = "Good Luck"
stringMaybeF?.uppercased()

class Dog {
    var name: String?
}

let dog: Dog? = Dog()
let isAssigned: Void? = (dog?.name = "Dog")


let stringMaybeG: String? = "how are you"
let resultG = stringMaybeG.map {
    (text: String) -> String in
    return text.uppercased()
}

let resultH: Int? = stringMaybeG.map {
    $0.uppercased().count
}
let anotherResultG: Int? = stringMaybeG.flatMap {
    (text: String) -> Int? in
    nil
}
let whatA: Int? = Int("String")

let stringMaybeH : String? = "i am fine"
if stringMaybeH == "i am fine" {
    print(stringMaybeH!)
}

let numberThree: Int? = 3
//if numberThree < 2 {
//
//}

if numberThree != nil && numberThree! < 10 {
    print(numberThree!)
}
