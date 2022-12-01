import SwiftUI

struct LocationSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [LocationItem]
}

struct LocationItem: Codable, Equatable, Identifiable {
    var id: UUID
    var name: String
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }

    var thumbnailImage: String {
        "\(mainImage)-icon"
    }

    #if DEBUG
    static let example = LocationItem(id: UUID(), name: "Livingroom")
    #endif
}
