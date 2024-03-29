//
//  ProductItemView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-28.
//

import SwiftUI

struct ProductItemView: View {
    
    var product : Product
    
    var body: some View {
        
        
            
            Button{
                
            } label: {
                VStack{
                Image(product.images[0])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 250)
                    .cornerRadius(5)
                    .shadow(radius: 1)
                
                Text(product.title)
                    .font(Font.custom("RobotoSerif", size: 12))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.darkBlue)
                    .frame(width: 167, alignment: .top)
                
                Text("$\(product.price)")
                    .font(Font.custom("RobotoSerif", size: 14))
                    .foregroundColor(Color.blue)
                    .padding(.top,2)
            }
          
        }
    }
}

#Preview {
    ProductItemView(product: product1)
}
