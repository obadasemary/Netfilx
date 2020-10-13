//
//  GlobalHelpers.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 31.08.2020.
//

import Foundation
import SwiftUI

let categories = [
    "Action",
    "Adventure",
    "Animation",
    "Comedy"
]

//    ["Action", "Adventure", "Animation", "Biography", "Comedy", "Crime", "Documentary", "Drama", "Family", "Fantasy", "Film Noir", "History", "Horror", "Music", "Musical", "Mystery", "Romance", "Sci-Fi", "Short Film", "Sport", "Superhero", "Thriller", "War", "Western"]

let exampleMovie0 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: categories,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Abdelrahman Mohamed, Nazli Abdelrahman, Sara Abdelrahman",
    cast: "Rami Malek, Obada Mohamed, Abdelrahman Mohamed",
    promotionHeadline: "New Season 2 comming soon"
)

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: categories,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Abdelrahman Mohamed, Nazli Abdelrahman, Sara Abdelrahman",
    cast: "Rami Malek, Obada Mohamed, Abdelrahman Mohamed"
)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "DeadPool",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: categories,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Abdelrahman Mohamed, Nazli Abdelrahman, Sara Abdelrahman",
    cast: "Rami Malek, Obada Mohamed, Abdelrahman Mohamed",
    promotionHeadline: "Best Rated Show"
)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "DeadPool 2",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: categories,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Abdelrahman Mohamed, Nazli Abdelrahman, Sara Abdelrahman",
    cast: "Rami Malek, Obada Mohamed, Abdelrahman Mohamed"
)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Spider Man",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: categories,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Abdelrahman Mohamed, Nazli Abdelrahman, Sara Abdelrahman",
    cast: "Rami Malek, Obada Mohamed, Abdelrahman Mohamed",
    promotionHeadline: "New Episodes coming soon"
)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Dark Night",
    thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
    categories: categories,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Abdelrahman Mohamed, Nazli Abdelrahman, Sara Abdelrahman",
    cast: "Rami Malek, Obada Mohamed, Abdelrahman Mohamed"
)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "Super Man",
    thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
    categories: categories,
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Abdelrahman Mohamed, Nazli Abdelrahman, Sara Abdelrahman",
    cast: "Rami Malek, Obada Mohamed, Abdelrahman Mohamed",
    promotionHeadline: "Watch Season 6 Now"
)

let exampleMovies: [Movie] = [
    exampleMovie0,
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6
]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(
    episodeName: "Hello, Elliot",
    description: "Elliot gets to Coney Island, and the delusion begins to slip. Mr. Robot reveals the truth.",
    season: 2,
    episode: 1
)

extension LinearGradient {
    
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(
            colors: [
                Color.black.opacity(0.0),
                Color.black.opacity(0.95)
            ]
        ),
        startPoint: .top,
        endPoint: .bottom
    )
}
