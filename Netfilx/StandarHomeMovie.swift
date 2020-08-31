//
//  StandarHomeMovie.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 31.08.2020.
//

import SwiftUI
import KingfisherSwiftUI

struct StandarHomeMovie: View {
    
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandarHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandarHomeMovie(movie: exampleMovie1)
    }
}
