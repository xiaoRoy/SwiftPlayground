import Cocoa

//Creating a Dictionary

func learnCreatingDictionary() {
    
    let stateAbbreviations:Dictionary<String, String> = ["AL":"Alabama", "CA":"California", "NV":"Nevada", "WV":"West Virginia"]
    
    let stateAbbreviationsSecond:[String: String] = ["AL":"Alabama", "CA":"California", "NV":"Nevada", "WV":"West Virginia"]
    
    
    let stateAbbreviationsThird = ["AL":"Alabama", "CA":"California", "NV":"Nevada", "WV":"West Virginia"]
    
    var emptystateAbbreviations:[String: String] = [:]
    
    var empty = [String: String]()
    
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

//learnAccessingAndModifyingValues()


//looping over a Dictionary

func loopADictionary() {
    let movieNameTron = "Tron"
    let movieRatings = [movieNameTron: 4, "WarGames": 5, "Sneakers": 4]
    
    for (movie, rating) in movieRatings {
        print("The movie:\(movie) was rated \(rating)")
    }
    
    let ratedMovies = Array(movieRatings.keys)
}

//loopADictionary()

//challenges

func showAllPlayers() {
    let teamMap = ["A": ["Jane", "Michaela", "Rachel"], "B": ["Allysha","Janine", "Sydney", "Toni"],
                   "C": ["Shelina", "Emily", "Chioma", "Kailen"]]
    
    var allNames:[String] = []
    for names in teamMap.values {
//        allNames.append(contentsOf: names)
        allNames += names
    }
    print(allNames)
}
//showAllPlayers()

func showTeamInfo() {
    let teamMap = ["A": ["Jane", "Michaela", "Rachel"], "B": ["Allysha","Janine", "Sydney", "Toni"],
                   "C": ["Shelina", "Emily", "Chioma", "Kailen"]]
    
    for (team, players) in teamMap {
        let newLine = "\n"
        var teamInfo = "\(team):\(newLine)"
        for player in players {
            teamInfo.append("\(player)\(newLine)")
        }
//        teamInfo.append(newLine)
        print(teamInfo)
    }
}
//showTeamInfo()

func showTeamInfoSecond() {
    let teamMap = ["A": ["Jane", "Michaela", "Rachel"], "B": ["Allysha","Janine", "Sydney", "Toni"],
                   "C": ["Shelina", "Emily", "Chioma", "Kailen"]]
    
    for (team, players) in teamMap {
        let newLine = "\n"
        let playersInfo = players.joined(separator: newLine)
        var teamInfo = "\(team):\(newLine)\(playersInfo)\(newLine)"
        print(teamInfo)
        
    }
  
}
//showTeamInfoSecond()

func showTeamInfoThird() {
    let teamMap = ["A": ["Jane", "Michaela", "Rachel"], "B": ["Allysha","Janine", "Sydney", "Toni"],
                   "C": ["Shelina", "Emily", "Chioma", "Kailen"]]
    
    for (team, players) in teamMap {
        print ("\(team): \(players)", separator: "what", terminator: "\ntest")
    }
    
    
}
showTeamInfoThird()
