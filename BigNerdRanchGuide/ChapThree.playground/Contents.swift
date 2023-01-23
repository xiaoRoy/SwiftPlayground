import Cocoa

let population = 5422
let message: String


if population < 10000 {
    message = "\(population) is a small town!"
} else if population < 50000 {
    message = "\(population) is medium town!"
} else {
    message = "\(population) is pretty big!"
}

let messageSecond = population < 1000 ? "tiny" : "small"
