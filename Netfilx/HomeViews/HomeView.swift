//
//  HomeView.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 31.08.2020.
//

import SwiftUI

struct HomeView: View {
    
    var vm = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    ZStack(alignment: .top) {
                        
                        TopMoviePreview(movie: exampleMovie3)
                            .frame(width: screen.width)
                            .padding(.top, -60)
                        
                        TopRowButtons()
                    }
                    
                    ForEach(vm.allCategory, id: \.self) { category in
                        
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.system(.title, design: .rounded))
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(vm.getMovie(forCat: category)) { movie in
                                        StandarHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
