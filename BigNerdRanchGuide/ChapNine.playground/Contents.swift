import Cocoa

//optional types

var errorCode: Optional<String> = Optional("404")

var errorCodeSecond: String? = "404"


var noAssignment: String?

print(noAssignment)

func show(error by: String?) {
    if by != nil {
        let errorCode = by!// force unwrapping
    }
    
}


// optional binding
func showOptionalBinding(errorCode: String?) {
    
    if let errorCode = errorCode, let errorCodeInt = Int(errorCode), errorCodeInt>=200, errorCodeInt < 300{
        print(errorCode)
        print(errorCodeInt)
    }
    
    let what: Int
}

//showOptionalBinding(errorCode: "200")

//Implicitly Unwrapped Optionals

func learnImplicitlyUnwrappedOptionals() {
    var errorCode: String! = "404"
    let errorCodeSecond: String = errorCode
    let errorCodeThird = errorCode // The type of errorCodeThird is String?
    errorCodeThird?.count

}

//Optional Chaining
func learnOptioanlChaining(errorCodeString: String) {
    var errorDescription:String?
    if let errorCodeInt = Int(errorCodeString), errorCodeInt == 400 {
        errorDescription = "\(errorCodeInt + 200): resource not found."
    }
    
    let uppercaseErrorDescription = errorDescription?.uppercased()
    print(uppercaseErrorDescription?.description)
    
    let reslut: String
    let noErrors = "No errors"
    if let errorDescription = errorDescription {
        reslut = errorDescription
    } else {
        reslut = noErrors
    }
    
    let resultSecond = errorDescription ?? noErrors
}

//Gold Challenge

func accessArray() {
    let lion = "lion"
    var animals = ["dog", "cat", "fish","monkey"]
    animals.append(lion)
    
    let indexOfDog = animals.firstIndex(of: "dog")
    
    
    if let indexOfDog = indexOfDog {
        let targetIndex =  animals.index(indexOfDog, offsetBy: 2)
        let target = animals[targetIndex]
        print(target)
    }
    
}

accessArray()
