//
//  CastInfo.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 13.10.2020.
//

import SwiftUI

struct CastInfo: View {
    
    // MARK: - PROPERTIES
    
    var movie: Movie
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 3) {
            
            HStack {
                Text("Cast: \(movie.cast)")
                
                Spacer()
            }
            
            HStack {
                Text("Creators: \(movie.creators)")
                
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 10)
    }
}

// MARK: - PREVIEW

struct CastInfo_Previews: PreviewProvider {
    static var previews: some View {
        CastInfo(movie: exampleMovie6)
            .previewLayout(.sizeThatFits)
    }
}
