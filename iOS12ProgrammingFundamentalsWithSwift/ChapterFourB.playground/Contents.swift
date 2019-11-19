import UIKit

enum Filter {
    case albums
    case playlists
    case podcasts
    case books
}

let filterType = Filter.albums
let filterTypeA: Filter = .books

func dofiltelr(by filter: Filter) {
    if filter == .podcasts {
        print("podcasts")
    }
}
dofiltelr(by: .podcasts)

enum StoryState: Int {
    case unStarted
    case started
    case finished
    case delivered
}
print(StoryState.unStarted)

enum WhatError {
    case number(Int)
    case message(String)
    case fatal(code: Int, message: String)
}

let errorA = WhatError.number(4)
let errorB = WhatError.fatal(code: 12, message: "fatal One")

enum FilterB: String, CaseIterable {
    case albums = "Albums"
    case playlists = "Playlists"
    case podcasts = "Podcasts"
    case books = "Books"
    
    init(_ index: Int) {
        self = FilterB.allCases[index]
    }
}
let filters = FilterB.allCases

