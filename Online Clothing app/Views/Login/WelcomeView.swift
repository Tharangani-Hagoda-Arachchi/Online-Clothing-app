//
//  WelcomeView.swift
//  OnlineClothingApp
//
//  Created by Malsha Bopage on 2024-03-21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image("blue clothing image")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Spacer()
                Image(systemName: "globe")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60 , height: 60
                    )
                    .padding(.bottom , 0)
                
                Text("Welcome to Our Store")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.darkGray)
                    .multilineTextAlignment(.center)
                
                Text("Welcome to our store")
                    .font(.customfont(.medium, fontSize: 20))
                    .foregroundColor(.darkGray.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                RoundButton(title: "Get started"){
                    
                }
                
                Spacer()
                    .frame(height: 80)
                
            }
            .padding(.horizontal, 20)
            
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
