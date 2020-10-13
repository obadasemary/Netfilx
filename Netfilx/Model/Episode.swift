//
//  Episode.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 13.10.2020.
//

import Foundation

struct Episode: Identifiable {
    
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
