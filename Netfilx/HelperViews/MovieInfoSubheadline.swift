//
//  MovieInfoSubheadline.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 13.10.2020.
//

import SwiftUI

struct MovieInfoSubheadline: View {
    
    // MARK: - PROPERTIES
    
    var movie: Movie
    
    // MARK: - BODY
    
    var body: some View {
        
        HStack(spacing: 20) {
            
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text(String(movie.year))
            
            RatingView(rating: movie.rating)
            
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

// MARK: - PREVIEW

struct MovieInfoSubheadline_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfoSubheadline(movie: exampleMovie3)
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
