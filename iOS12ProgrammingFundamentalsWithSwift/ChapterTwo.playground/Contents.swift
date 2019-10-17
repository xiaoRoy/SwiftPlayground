import UIKit

@discardableResult
func sum(_ one: Int, _ another: Int) -> Int {
    return one + another
}
_ = sum(3, 4)
func say1(_ text: String) {
    print(text)
}

func say2(_ text: String) -> () {
    print(text)
}

func say3(_ text: String) -> Void {
    print(text)
}

func concatSringSupressExternalParamter(_ string: String, times: Int) -> String{
    var reslut = ""
    for _ in 1...times {
        reslut += string
    }
    return reslut
}

let firstResult = concatSringSupressExternalParamter("hi", times: 5)

func concat(stirng s: String, times n : Int) -> String {
    var result = ""
    for _ in 1...n {
        result += s
    }
    return result
}

let secondResult = concat(stirng: "hello", times: 5)

class Person {
    func say(_ what: String) {
        print(what)
    }
    
    func say(_ what: Int) {
        print(what)
    }
    
    func say() -> Int {
        return 44
    }
    
    func say() -> String {
        return "one"
    }
    
    func say(text: String, times n : Int = 1) {
        for _ in 1...n {
            print(text)
        }
    }
    
    func say(aLot stringArray: String ...) {
        for text in stringArray {
            print(text)
        }
    }
    
    func say(_ message: String, times: Int, loudly _: Bool) {
        for _ in 1...times {
            print(message)
        }
    }
}

let person = Person()
person.say(aLot: "hi", "hello", "How are you")

print("hello", 3, true)

print("Manny", "Moe", separator:", ", terminator:", ")
print("Jack")

func removeCharacter(_ char: Character, from text: String) -> Int {
    //no problem
    var text = text
    var howMany = 0
    while let index = text.firstIndex(of: char) {
        text.remove(at: index)
        howMany += 1
    }
    return howMany
}

func removeCharacterChangingParam(_ char: Character, from text: inout String) -> Int {
    var howMany = 0
    while let index = text.firstIndex(of: char) {
        text.remove(at: index)
        howMany += 1
    }
    return howMany
}

var willChange = "hello"
removeCharacterChangingParam("l", from: &willChange)

class NumberRule{
    var shouldVarify: Bool = false
    
    func isMatch(number: Int) -> Bool {
        func checkNumber(_ number: Int) -> Bool{
            let bigNumber = number * number - 44
            return bigNumber > 100 && bigNumber.description.contains("1")
        }
        return !shouldVarify && checkNumber(number)
    }
}

func countDown(from number: Int) {
    print(number)
    if number > 0 {
        countDown(from: number - 1)
    }
}

func perform(action: () -> ()) {
    action()
}

func animate(withDuration time: Float, animations whatToAnimate: () -> (), completion whatToDoLater: (Bool) -> ()) {
    whatToAnimate()
    whatToDoLater(true)
}

animate(withDuration: 0.4,
        animations: {
            () -> () in
            print("running animation")
},
        completion: {
            (finished: Bool) -> () in
            if finished {
                print("Animation is finished")
            }
}
)

// omit the return type
animate(withDuration: 0.4,
        animations: {
            () in
            print("running animation")},
        completion: {
            (finished: Bool) in
            if finished {
                print("Animation is finished")
            }}
)

//omit the in expression
animate(withDuration: 0.4,
        animations: {
            print("running animation")
            
        },
        completion: {
            (finished: Bool) in
            if finished {
                print("Animation is finished")
        }}
)

//omit the parameter type
animate(withDuration: 0.4,
        animations: {
            print("running animation")
        },
        completion: {
            (finished) in
            if finished {
                print("Animation is finished")
        }}
)

//omit the parentheses
animate(withDuration: 0.4,
        animations: {
            print("running animation")
        },
        completion: {
            finished in
            if finished {
                print("Animation is finished")
        }}
)

//omit the in even when there are parameters
animate(withDuration: 0.4,
        animations: {
            print("running animation")
        },
        completion: {
            if $0 {
                print("Animation is finished")
            }
        }
)

//omit the paramter name
animate(withDuration: 0.4,
        animations: {
            print("running animation")
        },
        completion: {
            _ in
            print("Animation is finished")
        }
)

//trailing function
animate(withDuration: 0.4,
        animations: {
            print("running animation")
}) {
    _ in
    print("Animation is finished")
}

//omit calling function parentheses
perform {
    print("omit calling function parentheses")
}

//omit the retrun
func performThenShow(action: (Int, Int) -> Int) {
    let result = action(1, 2)
    print(result)
}

performThenShow {
    one, another in
    one + another
}

let numbers = [1, 2, 3]

let resultNumbersAnother = numbers.map({
    (one: Int) -> Int in
    return one * 2
})
let resultNumbers = numbers.map { $0 * 2 }

class Point {
    var x: Float = 0
    var y: Float = 0
    
//    init(x: Float, y: Float) {
//        self.x = x
//        self.y = y
//    }
}

func clone(point: Point, with count: Int) -> [Point] {
    var result = [Point]()
    for _ in 0...count {
        let newPoint = Point()
        newPoint.x = point.x
        newPoint.y = point.y
        result.append(newPoint)
    }
    return result
}

clone(
    point: {
    () -> Point in
    let point = Point()
        point.x = 3.1
        point.y = 4.4
        return point
}(),
    with: 12
)


//Closures
class WhatSize {
    var width: Int
    var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}

class WhatImage {}

class WhatRect {
    var x: Int
    var y: Int
    var width: Int
    var height: Int
    
    init(x: Int, y: Int, width: Int, height: Int) {
        self.x = x
        self.y = y
        self.width = width
        self.height = height
    }
}

class WhatBezierPath {
    var rect: WhatRect
    var cornerRadius: Int
    
    init(rect: WhatRect, cornerRadius: Int) {
        self.rect = rect
        self.cornerRadius = cornerRadius
    }
    
    func stroke() {
        
    }
}

func imageOfSize(_ size: WhatSize, _ whatToDraw: () -> ()) -> WhatImage {
    whatToDraw()
    return WhatImage()
}

func callImageOfSizeVersionOne() {
    imageOfSize(WhatSize(width: 20, height: 45)) {
        let path = WhatBezierPath(
            rect: WhatRect(x: 0, y: 0, width: 20, height: 45),
            cornerRadius: 8
        )
        path.stroke()
    }
}

func callImageOfSizeVersionTwo() {
    let size = WhatSize(width: 20, height: 45)
    imageOfSize(size) {
        let path = WhatBezierPath(
            rect: WhatRect(x: 0, y: 0, width: size.width, height: size.height),
            cornerRadius: 8
        )
        path.stroke()
    }
}

func makeRoundedRectangle(_ size: WhatSize) -> WhatImage {
    let image = imageOfSize(size) {
        let path = WhatBezierPath(
            rect: WhatRect(x: 0, y: 0, width: size.width, height: size.height),
            cornerRadius: 8
        )
        path.stroke()
    }
    return image
}

func makeRoundedRectangleMaker(_ size: WhatSize) -> () -> WhatImage {
    func makeRoundedRectangle() -> WhatImage {
        let image = imageOfSize(size) {
            let path = WhatBezierPath(
                rect: WhatRect(x: 0, y: 0, width: size.width, height: size.height),
                cornerRadius: 8
            )
            path.stroke()
        }
        return image
    }
    return makeRoundedRectangle
}

let maker = makeRoundedRectangleMaker(WhatSize(width: 20, height: 45))
let image = maker()


func makeRoundedRectangleMakerFinalVersion(_ size: WhatSize) -> () -> WhatImage {
    return {
        imageOfSize(size) {
            let path = WhatBezierPath(
                rect: WhatRect(x: 0, y: 0, width: size.width, height: size.height),
                cornerRadius: 8
            )
            path.stroke()
        }
    }
}

func makeRoundedRectangleMakerVersionB(_ size: WhatSize, _ cornerRadius: Int) -> () -> WhatImage {
    return {
        imageOfSize(size) {
            let path = WhatBezierPath(
                rect: WhatRect(x: 0, y: 0, width: size.width, height: size.height),
                cornerRadius: cornerRadius
            )
            path.stroke()
        }
    }
}

func makeRoundedRectangleMakerVersionC(_ size: WhatSize)  -> (Int) -> WhatImage{
    return {
        cornerRadius in
        imageOfSize(size) {
            let path = WhatBezierPath(
                rect: WhatRect(x: 0, y: 0, width: size.width, height: size.height),
                cornerRadius: cornerRadius
            )
            path.stroke()
        }
    }
}

let imageVersionC = makeRoundedRectangleMakerVersionC(WhatSize(width: 45, height: 12))(8)

func setCapturedValue() {
    func pass100(_ block: (Int) -> ()) {
        block(100)
    }
    
    var number = 44
    func setNumber(value: Int) {
        number = value
    }
    pass100(setNumber)
}

func countAdder(_ block: @escaping () -> ()) -> () -> () {
    var count = 0
    return {
        count = count + 1
        print("count is \(count)")
        block()
    }
}

func greet() {
    print("How you doing?")
}

let countedGreet = countAdder(greet)
countedGreet()
countedGreet()
countedGreet()


class What {
    
    var name = "what"
    
    func functionPasser(block: @escaping() -> ()) -> () -> () {
        return block
    }
    
    func display() {
        print("what")
    }
    
    func doCall() {
        functionPasser {
            print(self.name)
            print(self.display())
        }
    }
}

class Bird {
    
    func fly() {
        print("fly")
    }
    
    func fly(_ highSpeed: Bool) {
        if highSpeed {
            print("fly in high speed")
        } else {
            self.fly()
        }
    }
    
    func fly(times: Int) {
        
    }
    
    func fly(times: String) {
        
    }
    
    func fly(with: String) {
        
    }
    
    func test() {
        let flyA = fly(_:)
        flyA(false)
        
        let flyB = fly as (Bool) -> ()
        flyB(true)
        
        let flyC = fly as () -> ()
        flyC()
        
        let flyD = fly(with:)
        flyD("water")
    }
    
    func testB() {
        let block = {
            () -> (Bool) -> () in
            return self.fly(_:)
        }
        block()
    }
}


class Fish {
    func swim(){
        print("Fish swims.")
    }
}

class Cat {
    func jump() {
        print("Cat jumps")
    }
    
    func useDotNotationWithInstance() {
        let fish = Fish()
        let fishSwim = fish.swim
        fishSwim()
    }
    
    func useDotNotationWithType() {
        let fishSwim = Fish.swim
        fishSwim(Fish())
    }
}
