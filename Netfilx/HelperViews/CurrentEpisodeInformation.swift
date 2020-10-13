//
//  CurrentEpisodeInformation.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 13.10.2020.
//

import SwiftUI

struct CurrentEpisodeInformation: View {
    
    // MARK: - PROPERTIES
    
    var movie: Movie
    
    // MARK: - BODY
    
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}

// MARK: - PREVIEW

struct CurrentEpisodeInformation_Previews: PreviewProvider {
    static var previews: some View {
        CurrentEpisodeInformation(movie: exampleMovie4)
    }
}
