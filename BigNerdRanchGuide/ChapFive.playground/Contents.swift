import Cocoa

func getErrorMessage(by statusCode: Int) -> String {
    let errorMessage: String
    switch statusCode {
    case 401:
        errorMessage = "Unauthorized"
        
    case 403:
        errorMessage = "Forbidden"
        
    case 404:
        errorMessage = "Not found"
        
    default:
        errorMessage = "None."
    }
    
    
    return errorMessage
}


let result = getErrorMessage(by:123)

func getGeneralErrorMessage(by statusCode: Int) -> String{
    var generalErrorMessage: String = "The request failed: "
    
    switch statusCode{
    case 401, 403, 404:
        generalErrorMessage += "There was something wrong with the request."
        fallthrough
    default:
        generalErrorMessage += "Please review the request and try again."
    }
    
    return generalErrorMessage
}


func getBroaderErrorMessage(by statusCode: Int) -> String {
    var errorMessage = "The request failed: "
    
    switch statusCode {
    case 401:
        errorMessage += "Unauthorized"
        
    case 400...417:
        errorMessage += "Client error, 4xx"
        
    case 500...505:
        errorMessage += "Server error, 5xx"
        
    default:
        errorMessage += "Unknown status. Please review the request and try again."
    }
    return errorMessage
}

func getgetBroaderErrorMessageSecond(statusCode: Int) -> String {
    var errorMessage = "The request failed: "
    
    switch statusCode {
    case 401:
        errorMessage += "Unauthorized"
        
    case 400...417:
        errorMessage += "Client error, \(statusCode)"
        
    case 500...505:
        errorMessage += "Server error, \(statusCode)"
        
    case let statusCode:
        errorMessage = "\(statusCode) is not not known error code."

    }
    return errorMessage
}

func getgetBroaderErrorMessageThird(statusCode: Int) -> String {
    var errorMessage = "The request failed with error:"
    
    switch statusCode {
    case 401:
        errorMessage += "Unauthorized"
        
    case 400...417:
        errorMessage += "Client error, \(statusCode)"
        
    case 500...505:
        errorMessage += "Server error, \(statusCode)"
        
    case let statusCode where statusCode < 100 || statusCode >= 600:
        errorMessage = "\(statusCode) is an illegal status code."
        
    default:
        errorMessage = "Unexpected error encoutered."
    }
    
    return errorMessage
    
}

func showAge(age: Int) {
    switch age {
    case 18...35:
        print("Cool demographic")
    default:
        break
    }
}

func showAgeSecond(age: Int) {
    if case 18...35 = age {
        print("Cool demographic")
    }
}
