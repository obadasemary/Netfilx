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
    
    // MARK: - Personalization
    
    var currentEpisodeInfo: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    
    var creators: String
    var cast: String
    
    var episode: [Episode]?
    
    var promotionHeadline: String?
    
    var numberOfSeasonsDisplay: String {
        
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 Season"
            } else {
                return "\(num) Seasons"
            }
        }
        
        return ""
    }
    
    var episodeInfoDisplay: String {
        
        if let current = currentEpisodeInfo {
            return "S\(current.season): E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season): E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        
        if let current = currentEpisodeInfo {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}
