import UIKit

protocol Flier {
    func fly()
}

struct Birt : Flier {
    func fly() {
        
    }
}

func fly(flier: Flier) {
    flier.fly()
}

enum Filter : String, CustomStringConvertible {
    
    var description: String {
        return self.rawValue
    }
    
    case albums = "Albums"
    case playlists = "Playlists"
    case podcasts = "Podcasts"
    case books = "AudioBooks"
}


