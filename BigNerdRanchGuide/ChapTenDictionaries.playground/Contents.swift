import Cocoa

//Creating a Dictionary

func learnCreatingDictionary() {
    
    let stateAbbreviations:Dictionary<String, String> = ["AL":"Alabama", "CA":"California", "NV":"Nevada", "WV":"West Virginia"]
    
    let stateAbbreviationsSecond:[String: String] = ["AL":"Alabama", "CA":"California", "NV":"Nevada", "WV":"West Virginia"]
    
    
    let stateAbbreviationsThird = ["AL":"Alabama", "CA":"California", "NV":"Nevada", "WV":"West Virginia"]
    
    var emptystateAbbreviations:[String: String] = [:]
    
}

//Accessing and Modifying Values

func learnAccessingAndModifyingValues() {
    let movieNameTron = "Tron"
    var movieRatings = [movieNameTron: 4, "WarGames": 5, "Sneakers": 4]
    
    let ratingOfWarGames: Int? = movieRatings["WarGames"]
    
   
    
    let oldRatingOfTron = movieRatings.updateValue(5, forKey: movieNameTron)
    
    if let lastRating = oldRatingOfTron, let currentRating = movieRatings[movieNameTron] {
        
        print("old rting:\(lastRating)")
        
        print("currrent raging:\(currentRating)")
    }
    
    movieRatings["Hackers"] = 5
    
//    movieRatings.removeValue(forKey: movieNameTron)
    
    let countBeforeRemoval =  movieRatings.count
    
    movieRatings[movieNameTron] = nil
    
    let countAfterRemoval = movieRatings.count
    
    print("Count before removal is \(countBeforeRemoval)")
    print("Count after removal is \(countAfterRemoval)")
}

learnAccessingAndModifyingValues()
