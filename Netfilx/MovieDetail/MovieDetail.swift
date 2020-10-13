//
//  MovieDetail.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 13.10.2020.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        StandarHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadline(movie: movie)
                        
                        if movie.promotionHeadline != nil {
                            
                            Text(movie.promotionHeadline ?? "")
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            //
                        }
                        
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
                    .padding(.horizontal, 10)
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie6)
    }
}
