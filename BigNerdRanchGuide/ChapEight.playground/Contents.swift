import Cocoa

//creating an array

func learnArray() {
    var bukets: Array<String> = ["missing"]
    
    var anotherBukets: [String] = ["word", "message"]
    
    var threeBukets = ["apple", "pear"]
    
    var emptyStringArray = [String]()
    
    var emptyStringArrayB:[String] = []
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

func bronzeChallenge() {
    var toDoList = ["Take out the trash", "Pay bills", "Cross off finished items"]
    
    print(toDoList.isEmpty)
}

///bronzeChallenge()


//silver challenges
func reverse() {
    var items = ["Take out the trash", "Pay bills", "Cross off finished items", "Code every day", "Run 4 times a week"]
    let lastIndexToSwap = items.count / 2
    for index in 0..<lastIndexToSwap {
        let indexToSwap = items.count - 1 - index
        let itemToSwap = items[indexToSwap]
        let current = items[index]
        
        items[index] = itemToSwap
        items[indexToSwap] = current
    }
    
    for item in items {
        print(item)
        items.append("test")
    }
    
    print("The size of items is:\(items.count)")
}

reverse()

