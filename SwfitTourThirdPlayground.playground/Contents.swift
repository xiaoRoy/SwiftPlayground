import UIKit

//Protocols and Extensions

protocol ExampleProtocol {
    var simpleDescription: String { get }
    
    mutating func adjust()
}


class SimpleClass: ExampleProtocol {
    
    var simpleDescription: String = "A very simple class"
    
    var anotherProperty: Int = 2019
    
    func adjust() {
        simpleDescription += " Now 100% adjusted"
    }
}

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    
    mutating func adjust() {
        simpleDescription += " (adjust)"
    }
}

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}

print(7.simpleDescription)

//Error Handling

enum PrinterError : Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job Sent"
}

do {
    try send(job: 3, toPrinter: "Never Has Toner")
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer Error : \(printerError)")
} catch {
    print(error)
}

let printerFailure = try? send(job: 4, toPrinter: "Never Has Toner")

var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }
    let result = fridgeContent.contains(food)
    return result
}

//Generics

func makeArray<Item> (repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

func hasValue<Wrapped> (value : OptionalValue<Wrapped>) -> Bool {
    var result = false
    switch value {
    case .none:
        result = false
        break
    case .some:
        result = true
        break
    }
    return result
}
print(hasValue(value: OptionalValue.some(100)))



