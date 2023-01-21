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


let responsePaper = """
{"category": "all",
"location": "category list",
"products": [
    {
        "position": 1,
        "price": null,
        "category": "Place Cards",
        "location": "category list",
        "name": "Floral Monogram Place Cards",
        "material": [
            "No Paper Type",
            "No Foil"
        ],
        "product_id": "19372",
        "url": "https://qa-beta.theknot.com/paper/product/floral-monogram-place-cards",
        "variant": "pink"
    },
    {
        "position": 2,
        "price": null,
        "category": "Change the Date Postcards",
        "location": "category list",
        "name": "Lovely Letters Change the Date Postcards",
        "material": [
            "No Paper Type",
            "No Foil"
        ],
        "product_id": "13846",
        "url": "https://qa-beta.theknot.com/paper/product/lovely-letters-change-the-date-postcards",
        "variant": "white"
    },
    {
        "position": 3,
        "price": null,
        "category": "Save the Date Cards",
        "location": "category list",
        "name": "Windows Save The Date Cards",
        "material": [
            "No Paper Type",
            "No Foil"
        ],
        "product_id": "23027",
        "url": "https://qa-beta.theknot.com/paper/product/windows-save-the-date-cards",
        "variant": "black"
    }
]
}
"""

if let responseToParse = responsePaper.data(using: String.Encoding.utf8) {
    let paperResult: [String: Any]? = try? JSONSerialization.jsonObject(with: responseToParse, options: []) as? [String: Any]
    print(paperResult)
}


