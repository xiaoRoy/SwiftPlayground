import Cocoa

print("Tha maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")

print("The maximum Int8 value is \(Int8.max).")
print("The minimum Int8 value is \(Int8.min).")

print("The maximum Unsigned Int value is \(UInt8.max)")
print("The minimum Unsigned Int value is \(UInt8.min)")

//let invalidNumber: UInt = -1



//Overflow operator
let first: Int8 = 127
let firstResult = first &+ 1

let second: Int8 = -128
let secondResult = second &- 1

//Convering Bwtween Integer Types
let one: Int16 = 200
let anohter: Int8 = 12
// Not enough bits to represent the passed value
//let oneAndAnother = Int8(one) + anohter
let oneAndAnother = one + Int16(anohter)


let d1 = 1.1
let d2 = 1.1

let reusltD1 = d1 + 0.1
print("The reuslt d1 + 0.1 is \(reusltD1)")

if reusltD1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}

//Number Range

let ticketCount = 1_000
let ticketNumbers = 1 ... ticketCount
let ticketNumbersOpen = 1 ..< ticketCount


//Number Literals
let aBinary = 0b1010_1100
let aHex = 0x8BAD_F233

let scientificInt = 1.66e5
let scientificFloat = 1.66e-2
