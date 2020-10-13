//
//  CurrentEpisodeInfo.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 13.10.2020.
//

import Foundation

struct CurrentEpisodeInfo: Hashable, Equatable {
    
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
