//
//  HomeVM.swift
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
        
        movies["Trending Now"] = exampleMovies
        movies["Netfilx Originals"] = exampleMovies.shuffled()
        movies["Comedies"] = exampleMovies.shuffled()
        movies["Animation"] = exampleMovies.shuffled()
        movies["Egyption Comedies"] = exampleMovies.shuffled()
        movies["Egyption Movies"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
    }
}
