//
//  HeaderView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-28.
//

import SwiftUI

struct HeaderView: View {
    
    var menuAction: ButtonAction
    var cartAction: ButtonAction
    
    var body: some View {
        ZStack{
            HStack{
                Button{
                    menuAction()
                } label: {
                    Image("icons8-menu-50-2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 24, height: 24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                
                NavigationLink{
                    HomeView()
                        
                } label: {
                    
                    Image("Feminine Black Purple Brand Fashion Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 84, height: 84)
                }
                
                Button{
                    cartAction()
                } label: {
                    Image("icons8-bag-48")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 24, height: 24)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
                }
              
                
               
            }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .frame(height: 80)
        .background(.white)
        .zIndex(1)
        .shadow(radius: 0.4)
        }
    
      
    }

