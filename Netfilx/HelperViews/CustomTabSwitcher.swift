//
//  CustomTabSwitcher.swift
//  Netfilx
//
//  Created by Abdelrahman Mohamed on 13.10.2020.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    // MARK: - PROPERTIES
    
    @State private var currentTab: CustomTab = .episodes
    
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            
                            Button(action: {
                                currentTab = tab
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            }
            
            switch currentTab {
            
            case .episodes:
                Text("Episodes")
            case .trailers:
                Text("Trailers & More")
            case .more:
                Text("More")
            }
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
                .previewLayout(.sizeThatFits)
                .background(
                    Color.black
                )
        }
    }
}
