import UIKit

class Dog {
    var name: String
    var license: Int
    
//    init(name: String) {
//        self.name = name
//    }
//
//    init(license: Int) {
//        self.license = license
//    }
    
    init(name: String = "", license: Int = 0) {
        self.name = name
        self.license = license
    }
}

let dogA = Dog(name: "dogA")

struct Apple {
}

enum Phone{
}


