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

struct MediaQuery {
    static func loadAlbumsQuery() -> MediaQuery {
        return MediaQuery()
    }
    static func loadPlaylistsQuery() -> MediaQuery {
        return MediaQuery()
    }
    static func loadPodcastsQuery() -> MediaQuery {
        return MediaQuery()
    }
    static func loadBooksQuery() -> MediaQuery {
        return MediaQuery()
    }
}
enum FilterB: String, CaseIterable {
    case albums = "Albums"
    case playlists = "Playlists"
    case podcasts = "Podcasts"
    case books = "AudioBooks"
    
    init?(index: Int) {
        if !FilterB.allCases.indices.contains(index) {
            return nil
        } else {
            self = FilterB.allCases[index]
        }
    }
    
    init?(_ rawValue: String) {
        self.init(rawValue: rawValue)
    }
    
    var query: MediaQuery {
        get {
            switch self {
            case .albums:
                return .loadAlbumsQuery()
            case .playlists:
                return .loadPlaylistsQuery()
            case .podcasts:
                return .loadPodcastsQuery()
            case .books:
                return .loadBooksQuery()
            }
        }
        set(newQuery) {
            
        }
    }
    
    mutating func newQuery(query: MediaQuery) {
        self.query = query
    }
    
    mutating func advance() {
        let currentIndex = FilterB.allCases.firstIndex(of: self)!
        let nextIndex = (currentIndex + 1) % FilterB.allCases.count
        self = FilterB.allCases[nextIndex]
    }
    
    mutating func backToDfaultFilter() {
        self = FilterB.books
    }
}
let filters = FilterB.allCases

let filterFirst = FilterB.albums
let filterSecond = FilterB(index: 0)
let filterThird: FilterB? = FilterB(rawValue: "Albums")

var  filterFouth = FilterB.books
filterFouth.advance()

