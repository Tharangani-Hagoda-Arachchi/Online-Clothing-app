//
//  LoginView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-24.
//


import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var signupVM = SignUpViewModel()
    
    var body: some View {
     
        ZStack {
           
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
//                   .padding(.bottom , 0)
                    .padding(.bottom, .screenWidth * 0.1)
              
                
                Text("Login")
                    .font(.customfont(.semibold, fontSize: 28))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10)
                
                Text("Enter your emails and password")
                    .font(.customfont(.semibold, fontSize: 20))
                    .foregroundColor(.black)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                LineTextField(title: "Email",placholder: "Enter Email", txt: $signupVM.email)
                    .padding(20)
                    .background(Color.white.opacity(0.6))
                    .cornerRadius(20)
                
                    .padding(.bottom, .screenWidth * 0.04)
                
                LineTextField(title: "Password",placholder: "Enter Password", txt: $signupVM.password)
                    .padding(20)
                    .background(Color.white.opacity(0.6))
                    .cornerRadius(20)
//                EntryField(sfSymbolName: "envelope", placeHolder: "Email", prompt: signupVM.emailPrompt, field: $signupVM.email)
                
                    .padding(.bottom, .screenWidth * 0.04)
                
                NavigationLink(destination: HomeView()) {
                                        RoundButton(title: "Login")
                                    }
                .padding(.bottom, .screenWidth * 0.04)
                
                
                NavigationLink {
                    SignUpView()
                } label: {
                    HStack{
                        Text("Don’t have an account?")
                            .font(.customfont(.semibold, fontSize: 20))
                            .foregroundColor(.primaryText)
                        
                        Text("Signup")
                            .font(.customfont(.semibold, fontSize: 20))
                            .foregroundColor(.white)
                    }
                }

               
                
                Spacer()
            }
//            .padding(.top, .topInsets + 64)
//            .padding(.horizontal, 20)
//            .padding(.bottom, .bottomInsets)
//            
            .padding(.top, 60)
            .padding(.horizontal, 20)
            .padding(.bottom, 60)
            
            VStack {
                    

                
                Spacer()
                
            }
//            .padding(.top, .topInsets)
            .padding(.top, 60)
            .padding(.horizontal, 20)
            
            
            
        }

        .background(Color.darkBlue)
        .opacity(0.76)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        
    }
}

#Preview {
    NavigationView {
        LoginView()
    }
}


