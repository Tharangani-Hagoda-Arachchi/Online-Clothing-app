//
//  TrendingHashtagsView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-29.
//

import SwiftUI

struct TrendingHashtagsView: View {
    var body: some View {
        VStack{
            Text("@Trending")
                .font(Font.custom("RobotoSerif", size: 18))
                .multilineTextAlignment(.center)
                .foregroundColor(.darkBlue)
            
                HashtagsView(tags: hashtags)
                .padding([.leading, .trailing], 30)
            
        }
    }
}

#Preview {
    TrendingHashtagsView()
}
