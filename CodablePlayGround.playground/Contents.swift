import Foundation

struct GroceryProduct:Decodable {
    var name: String
    var points: Int
    var description: String
}

let response = """
{
    "name": "Durian",
    "points": 600,
    "description": "A fruit with a distinctive scent."
}
""".data(using: .utf8)!

let decoder = JSONDecoder()

let result = try decoder.decode(GroceryProduct.self, from: response)

print(result)

class Book {
    public let name: String = "title"
}


func buildString() -> String? {
    return nil
}

let first: String? = "abc".description

let second: String? = buildString()

if first != second {
    print("Not equal")
}


