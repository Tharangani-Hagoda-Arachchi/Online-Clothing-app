//
//  SignUpView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-25.
//

import SwiftUI

struct SignUpView: View {
   
    @State private var signupVM = SignUpViewModel()
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
  
    
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
              
                
                Text("Sign Up")
                    .font(.customfont(.semibold, fontSize: 28))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 10)
                
                Text("Enter your emails and password")
                    .font(.customfont(.semibold, fontSize: 20))
                    .foregroundColor(.black)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                TextField("Enter Email", text: $signupVM.email)
                    .padding(20)
                    .background(Color.white.opacity(0.4))
                    .cornerRadius(20)
                
                    .padding(.bottom, .screenWidth * 0.04)
                
                TextField("Enter Password", text: $signupVM.email)
                    .padding(20)
                    .background(Color.white.opacity(0.4))
                    .cornerRadius(20)
//                EntryField(sfSymbolName: "envelope", placeHolder: "Email", prompt: signupVM.emailPrompt, field: $signupVM.email)
                
                    .padding(.bottom, .screenWidth * 0.04)
               
                TextField("Confirm Password", text: $signupVM.email)
                    .padding(20)
                    .background(Color.white.opacity(0.4))
                    .cornerRadius(20)
                
                    .padding(.bottom, .screenWidth * 0.04)
                NavigationLink(destination: LoginView()) {
                                        RoundButton(title: "SignUp")
                                    }
                .padding(.bottom, .screenWidth * 0.04)
                
                
                NavigationLink {
                    LoginView()
                } label: {
                    HStack{
                        Text("Already have a account?")
                            .font(.customfont(.semibold, fontSize: 20))
                            .foregroundColor(.primaryText)
                        
                        Text("Login")
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

        .background(Color.blue)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
        
    }
}

#Preview {
    SignUpView()
}


