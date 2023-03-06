import Cocoa

//creating an array

func learnArray() {
    var bukets: Array<String> = ["missing"]
    
    var anotherBukets: [String] = ["word", "message"]
    
    var threeBukets = ["apple", "pear"]
    
    var emptyStringArray = [String]()
}

//accessing and modifying arrays

func accessAndModifyingArray() {
    var fruits = ["Apple", "Orange"]
    fruits.append("Pear")
    fruits.append("Peach")
    
    print("The couunt of the fruits is \(fruits.count)")
    fruits.remove(at: 0)
    print("The couunt of the fruits is \(fruits.count)")
    fruits[1] += "!"
    fruits[2] = "not a fruit"
    
    fruits.insert("Red apple", at: 1)
    print(fruits)
    
}
//accessAndModifyingArray()

func combineArrays() {
    var tasks = ["coding", "running", "cooking"]
    
    let moreTaks = ["cleaning", "shopping"]
    
    tasks += moreTaks
    print(tasks)
}

//combineArrays()

//challenges


