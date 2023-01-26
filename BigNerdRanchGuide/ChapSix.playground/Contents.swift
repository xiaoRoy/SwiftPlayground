import Cocoa



func showForLoop() {
    var count = 0
    for index in 1...5 {
        count += 1
        print("The current count is \(count)")
    }
    
    var secondCount = 0
    
    for index: Int in 1...5 {
        secondCount += 1
        print("The current second count is \(secondCount)")
    }
    
    
    var thirdCount = 0
    for _ in 1...5 {
        thirdCount += 1
        print("The current third count is \(thirdCount)")
    }
}

func showForLoopWithWhere (upper: Int) {
    for i in 1...upper where i % 3 == 0 {
        print("No reminder \(i) divided by 3")
        print("divisible")
    }
}

//showForLoopWithWhere(upper: 27)

func testSpaceship() {
    var shields = 5
    var isBlastersOverheating = false
    var blasterFireCount = 0
    
    while shields > 0 {
        if isBlastersOverheating {
            print("Blaster overheated! Cooldown initiated.")
            sleep(5)
            print("Blasters ready to fire")
            sleep(1)
            isBlastersOverheating = false
            blasterFireCount = 0
        }
        
        if blasterFireCount > 100 {
            isBlastersOverheating = true
            continue
        }
        
        print("Fire blasters!")
        
        blasterFireCount += 1
    }
}
testSpaceship()

func fizzAndBuzz(count: Int) {
    var result: String = String()
    
    for index in 1...count {
        let fizzAndBuzzResult = (fizz: index % 3, buzz: index % 5)
        let divisible = (0, 0)
        switch fizzAndBuzzResult {
        case (0, 0):
            result.append("FIZZ BUZZ")
        case (0, _):
            result.append("FIZZ")
        case (_, 0):
            result.append("BUZZ")
        default:
            result.append(index.description)
        }
        let isLastIndex = index == count
        
    }
}
