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
