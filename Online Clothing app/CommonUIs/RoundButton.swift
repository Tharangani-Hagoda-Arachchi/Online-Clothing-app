//
//  RounButton.swift
//  OnlineClothingApp
//
//  Created by Malsha Bopage on 2024-03-21.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap: (()->())?
    var body: some View {
        Button(action: {
             didTap?()
        }, label: {
            Text(title)
                .font(.customfont(.medium, fontSize: 30))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        })
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
        .background(Color.darkBlue)
        .cornerRadius(20)
        
    }
}

#Preview {
    RoundButton()
        .padding(30)
}
