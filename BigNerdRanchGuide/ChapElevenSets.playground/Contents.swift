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
    
    var groceries: Set = ["Apple", "Oranges"]
    
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

//loopASet()

//working with sets

func hasElement() {
    let groceries = addElementToSet()
    if !groceries.contains("milk") {
        print("No milk in the list")
    }
}
//hasElement()

//Union

let anotherGroceries: Set = ["Bananas", "Cereal", "Milk", "Oranges"]

func unionSets() {
    let groceries = addElementToSet()
    let shared = groceries.union(anotherGroceries)
    showItems(in: shared)
}
//unionSets()

//intersection
func makeIntersection() {
    let groceries = addElementToSet()
    let shared = groceries.intersection(anotherGroceries)
    showItems(in: shared)
}
//makeIntersection()

//disjoint
func showDisjointedness() {
    let groceries: Set = addElementToSet()
    
    let isDisjoint = groceries.isDisjoint(with: groceries)
}

//showDisjointedness()

//moving between types

func makeSubstraction() {
    let players = ["Anna", "Vijay", "Jenka"]
    let winners = ["Jenka", "Jenka", "Vijay", "Jenka"]
    
    let playerSet = Set(players)
    let winnerSet = Set(winners)
    
    playerSet.subtracting(winners)
}
//makeSubstraction()

//challenges

func doBronzeChallenge() {
    let myCities: Set = ["Atlanta", "Chicago", "Jacksonville", "New York", "Denver"]
    let yourCities: Set = ["Chicago", "Denver", "Jacksonville"]
    
    myCities.isSuperset(of: yourCities)
}

//doBronzeChallenge()


func doSilverChallenge() {
    
    var groceries = addElementToSet()
    groceries.formUnion(anotherGroceries)
    
    var gorceriesB = addElementToSet()
    gorceriesB.formIntersection(anotherGroceries)
}
doSilverChallenge()


enum CompassPoint {
    case north
    case south
    case east
    case west
}


func testSwitch(direction: CompassPoint) {
    switch direction {
    case .north:
        print("North")
    default:
        print("default")
    }

}
