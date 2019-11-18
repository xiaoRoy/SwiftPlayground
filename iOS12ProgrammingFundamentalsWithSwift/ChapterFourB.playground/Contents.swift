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


