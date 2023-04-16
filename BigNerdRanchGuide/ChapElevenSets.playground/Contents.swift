import Cocoa


//Getting a set

func crtateASet() {
    let groceryArray = ["Apple", "Orange"]
    let groceries = Set<String>(groceryArray)
    let groceriesSecond: Set<String> = ["Apple", "Orange"]
    let groceriesThird: Set = ["Apple", "Orange"]
}

//Adding to a set

func addElementToSet() -> Set<String> {
    
    var groceries: Set = ["Apple", "Orange"]
    
    groceries.insert("Kiwi")
    groceries.insert("Pears")
    return groceries
}


//looping a set

func loopASet() {
    var groceries: Set = addElementToSet()
    
    showItems(in: groceries)
    
    groceries.remove("Pears")
    
    showItems(in: groceries)
    
}

func showItems(in groceries: Set<String>) {
    for item in groceries {
        print(item)
    }
    print("All items are shown as above!")
}

loopASet()
