import UIKit

struct Digit {
    var number: Int
    let length: Int
}

struct DigitA {
    var number: Int
    
    mutating func changeNumberTo(_ number: Int) {
        self.number = number
    }
    
    mutating func callAnotherFunction() {
        anotherFunction {
            () -> () in
            self.changeNumberTo(12)
        }
    }
    // if we use @escaptinghere, Escaping closure cannot capture a mutating self parameter
//    private func anotherFunction(_ block: @escaping () -> ()) -> () -> () {
//        return block
//    }
    private func anotherFunction(_ block: () -> ()) {
        block()
    }
}

var digitFirst = DigitA(number: 123) {
    didSet {
        print("First was set")
    }
}
digitFirst.number = 44

let digitSecond = DigitA(number: 22)
/*
 * Cannot use mutating member on immutable value: 'digitSecond' is a 'let' constant
 **/
//digitSecond.changeNumberTo(12)

func tryToChangeNumber(_ digit: DigitA) {
    /*
     * Cannot use mutating member on immutable value: 'digitSecond' is a 'let' constant
     **/
    //digit.changeNumberTo(12)
}

let digitThird = DigitA(number: 12)
var digitFourth = digitThird {
    didSet {
        print("digitFourth disSet")
    }
}
digitFourth.changeNumberTo(15)
print(digitThird.number) // still 12 not 15
