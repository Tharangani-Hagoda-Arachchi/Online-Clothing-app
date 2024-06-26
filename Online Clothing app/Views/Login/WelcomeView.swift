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
                .opacity(0.86)
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                Spacer()
                 Image("Feminine Black Purple Brand Fashion Logo")
                    .resizable()
                    .scaledToFit()
                    .opacity(0.7)
//                    .background(Color.white)
                    .frame(width: 100 , height: 100
                    )
                    .cornerRadius(28)
                    .padding(.bottom , 0)
                
                Text("Welcome to Our Store")
                    .font(.customfont(.medium, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
                Text("Welcome to Rachella Clothing Store")
                    .font(.customfont(.medium, fontSize: 20))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                
                
                NavigationLink(destination: LoginView()) {
                                        RoundButton(title: "Get started")
                                    }
                
                Spacer()
                    .frame(height: 100)
                
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
    NavigationView {
       WelcomeView()
    }
}
