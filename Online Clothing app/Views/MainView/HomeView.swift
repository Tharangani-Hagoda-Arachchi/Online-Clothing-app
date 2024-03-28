//
//  HomeView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-28.
//

import SwiftUI

struct HomeView: View {
    
    private var categories = [Categories.All.rawValue, Categories.Apparel.rawValue, Categories.Dress.rawValue, Categories.TShirt.rawValue, Categories.Bag.rawValue]
    
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            ZStack{
                VStack(spacing: 0){
                    ScrollView(.vertical){
                        HeroImageView()
                        NewArrivalNew()
                        Spacer()
                    }
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                .padding(.top, 20)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .top){
                HeaderView{
                    
                } cartAction:{
                    
                    
                }
            }
        }
        
    
    }
    
    @ViewBuilder
       private func HeroImageView() -> some View{
           ZStack{
            Image("Hero")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(maxWidth: .infinity)
                   .frame(height: 620)
               Button{
                   
               }label: {
                   RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).overlay{
                       Text("Explore Collection")
                           .font(Font.custom("RobotoSerif", size:20))
                           .foregroundColor(.white)
                   }
                  
               }
               .frame(width: 250, height: 50)
               .tint(.darkBlue.opacity(0.5))
               
               .offset(.init(width: 0, height: 200))
           }
       }
    
    @ViewBuilder
    private func NewArrivalNew() ->
    some View{
        Text("New Arrival")
            .font(Font.custom("RobotoSerif", size: 28))
        
            .multilineTextAlignment(.center)
            .foregroundColor(.darkBlue).opacity(0.6)
            .frame(width: 225, height: 32, alignment: .top)
            .padding(.top, -30)
        
        Image("Divider")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(0.2)
            .frame(width: 150)
            .padding(.top, -60)
        
        VStack{
            HStack(spacing: 20){
                ForEach(0..<categories.count, id: \.self){
                    i in
                    CategoryView(isSelected: i == selectedCategory, title: categories[i])
                        .onTapGesture {
                            selectedCategory = i
                        }
                }
            }
//            .frame(minWidth: .infinity)
            .frame(minWidth: 20)
        }
        
    }
    

    
}

#Preview {
    HomeView()
}
