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
    
    if let errorCode = errorCode {
        print(errorCode)
    }
    
}

showOptionalBinding(errorCode: "404")
