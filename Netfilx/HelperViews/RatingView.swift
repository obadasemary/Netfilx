//
//  RatingView.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 13.10.2020.
//

import SwiftUI

struct RatingView: View {
    
    // MARK: - PROPERTIES
    
    var rating: String
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

// MARK: - PREVIEW

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: exampleMovie3.rating)
            .previewLayout(.sizeThatFits)
    }
}
