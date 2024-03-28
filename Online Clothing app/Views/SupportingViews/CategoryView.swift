//
//  CategoryView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-28.
//

import SwiftUI

struct CategoryView: View {
    var isSelected: Bool = false
    var title: String = "All"
    var body: some View {
        VStack(spacing: 1){
            Text(title)
                .font(Font.custom("RobotoSerif", size: 15))
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.darkBlue : Color.placeholder.opacity(0.99))
            
           if isSelected {
                Rectangle()
                    .foregroundColor(.darkBlue)
                    .frame(width: 5, height: 5)
                    .rotationEffect(Angle(degrees: 45))
            }
        }
    }
}

#Preview {
    CategoryView()
}
