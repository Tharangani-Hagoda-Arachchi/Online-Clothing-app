//
//  SideCartView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-29.
//

import SwiftUI

struct SideCartViewTemp: View {
    @State var presentSideMenu = true
    
    var body: some View {
        ZStack{
            SideCartMenu()
                .background(Color.darkBlue)
        }
    }
    
    @ViewBuilder
    private func SideCartMenu() -> some View{
        SideView(isShowing: $presentSideMenu, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideMenu)), direction: .trailing)
    }
}

#Preview {
    SideCartViewTemp()
}


struct SideCartViewContents: View {
    @Binding var presentSideMenu: Bool
    @State private var totalPrice: Int = 0
    
    var body: some View {
        VStack(alignment: .leading){
            SideMenuTopView()
                .padding([.leading, .trailing], 20)
            
            Text("CART")
                .font(Font.custom("RobotoSerif", size: 24))
                .foregroundColor(.darkBlue)
                .padding([.leading, .trailing], 20)
            
            //this shows when cart empty
//            EmptyCartView()
//            if cartItems.count > 0 {
//                CartFullView()
//            } else{
//                EmptyCartView()
//            }
           
            
            Spacer()
        }
    }
    
    @ViewBuilder
    func SideMenuTopView() -> some View{
        VStack{
            HStack{
                Button{
                    presentSideMenu.toggle()
                } label: {
                    Image("Close")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 34, height: 34)
                Spacer()
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .padding(.leading, 10)
        .padding(.top, 40)
        .padding(.bottom, 30)
    }
    
    @ViewBuilder
    func EmptyCartView()-> some View{
        VStack(alignment: .leading){
            Text("You have no items in your shopping bag")
                .font(Font.custom("RobotoSerif", size: 16))
                .multilineTextAlignment(.center)
                .foregroundColor(Color.placeholder)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
    
    @ViewBuilder
    func CartFullView() -> some View{
        VStack(alignment : .leading){
            VStack{
                ScrollView(.vertical){
                  
                }
            }
        }
    }
}
