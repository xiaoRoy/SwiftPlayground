import Cocoa

var greeting = "Hello, playground"
greeting += "!"

//raw string

let quote = #"I wanted so \"say\":\n\(playground)"#

//Character

func displayCharacter(inside text: String) {
    for char in text {
        print("'\(char)'")
    }
}

//displayCharacter(inside: "Message")

//Unicode

let showman = "\u{2603}"
let showmanAcute = "\u{2602}\u{0301}"

func showScaler() {
    for scaler in quote.unicodeScalars {
        print("\(scaler.value)")
    }
}

//showScaler()

//Canonical equivalence

func whatIsCanonicalEquivalence() {
    let aAcute = "\u{0061}\u{0301}"
    let precomposedAAcute = "\u{00E1}"
    let isTheSame = aAcute == precomposedAAcute
    print(isTheSame)
    
    print("The length of a acute:\(aAcute.count)")
    print("The length of precomposed a acute:\(precomposedAAcute.count)")
    print("Unicode Scaler of A Acute:\(aAcute.unicodeScalars.first)")
}

//whatIsCanonicalEquivalence()


//Indices and ranges

func learnIndices() {
    let message = "hello"
    let start = message.startIndex
    let end = message.endIndex
    
    let thirdIndex = message.index(start, offsetBy: 2)
    let thirdChar = message[thirdIndex]
    print(thirdChar)
    
}

//learnIndices()

func learnRange() {
    let message = "missing"
    let start = message.startIndex
    let end = message.index(start, offsetBy: 3)
    let firstFourRange = start...end
    let firstFour = message[firstFourRange]
    print(firstFour)
    
    let anotherFirstFourRange = ...end
    let anotherFirstFour = message[anotherFirstFourRange]
    print(anotherFirstFour)
}

//learnRange()


// challenge

func bronzeChallenge() {
    let empty = ""
    empty.isEmpty
    
    if empty.startIndex == empty.endIndex {
        print("It is an empty string.")
    }
}
//bronzeChallenge()

func multipleLines() {
    let tale = """
        It was the best of times,
        it was the worst of times.
    """
    print(tale)
    let anotherTale = """
        It was the best of times,
        it was the worst of times.
        """
    print(anotherTale)
}
multipleLines()
