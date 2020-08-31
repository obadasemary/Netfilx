//
//  HomeViewModel.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 31.08.2020.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategory: [String] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        
        setupMovies()
    }
    
    func setupMovies() {
        
        movies["Trending Now"] = [exampleMovie1]
    }
}
