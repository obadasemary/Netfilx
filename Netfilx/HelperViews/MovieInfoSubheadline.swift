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
        
        HStack {
            
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            
            Text("MOVIE YEAR")
            
            Text("RATING")
            
            Text("seasons")
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

// MARK: - PREVIEW

struct MovieInfoSubheadline_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfoSubheadline(movie: exampleMovie3)
    }
}
