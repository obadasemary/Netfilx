//
//  WhiteButton.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 31.08.2020.
//

import SwiftUI

struct WhiteButton: View {
    
    var text: String
    var imageName: String
    
    var action: () -> Void
    
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 3)
                    .foregroundColor(.white)
                
                HStack {
                        
                    Image(systemName: imageName)
                        .font(.headline)
                    
                    Text(text)
                        .bold()
                        .font(.system(size: 16))
                }
                .background(Color.white)
                .foregroundColor(.black)
            }
            .padding(.vertical, 6)
        })
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            WhiteButton(text: "Play", imageName: "play.fill") {
                
            }
        }
    }
}
