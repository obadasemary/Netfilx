//
//  Movie.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 31.08.2020.
//

import Foundation

struct Movie: Identifiable {
    
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
    
    // MARK: - MovieDetail View
    
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
}
