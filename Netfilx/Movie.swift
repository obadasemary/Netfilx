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
}
