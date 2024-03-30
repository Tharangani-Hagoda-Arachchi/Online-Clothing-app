//
//  HomeView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-28.
//

import SwiftUI

struct HomeView: View {
    
    @State var presentSideMenu = false
    @State var presentSideCart = false
    
    private var categories = [Categories.All.rawValue, Categories.Apparel.rawValue, Categories.Dress.rawValue, Categories.TShirt.rawValue, Categories.Bag.rawValue]
    
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                Color.white.edgesIgnoringSafeArea(.all)
                ZStack{
                    VStack(spacing: 0){
                        ScrollView(.vertical){
                            HeroImageView()
                            NewArrivalNew()
                            Image("Brand")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            CollectionsView()
                            TrendingHashtagsView()
                            FooterView()
                            Spacer()
                        }
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.top, 20)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .overlay(alignment: .top){
                    HeaderView{
                        presentSideMenu.toggle()
                    } cartAction:{
                        
                        presentSideCart.toggle()
                    }
                }
                SideMenu()
                SideCart()
            }
            .navigationBarHidden(true)
            
        }
    }
    
    @ViewBuilder
    private func HeroImageView() -> some View{
        
        NavigationLink{
            ProductsList()
            
        }label: {
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
            .frame(minWidth: 50)
            
            HStack{
                ProductItemView(product: product1)
                ProductItemView(product: product2)
                
            }
            HStack{
                ProductItemView(product: product3)
                ProductItemView(product: product4)
                
            }
            
            Button {
                
            } label: {
                HStack(alignment: .center,spacing: 0){
                    Text("Explore Here")
                        .font(Font.custom("RobotoSerif", size: 28))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.darkBlue).opacity(0.6)
                        .padding(10)
                    Image(systemName: "arrow.forward")
                        .frame(width: 18, height: 18)
                }
            }
            .tint(Color.darkBlue)
            .padding(12)
            
        }
        
       
        }
        
    @ViewBuilder
    private func CollectionsView() -> some View {
        Text("Collections")
            .font(Font.custom("RobotoSerif", size: 28))
            .foregroundColor(Color.darkBlue).opacity(0.6)
        
        NavigationLink{
            ProductsList()
        } label :{
            
            Image("Collection 1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 244, alignment: .top)
                .clipped()
        }
        
        NavigationLink{
            ProductsList()
        } label :{
            
            Image("Collection 2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 244, alignment: .top)
                .clipped()
        }
        
        
        Image("Divider")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .opacity(0.2)
            .frame(width: 150)
            .padding(.top, -60)
        
        
    }
    
    @ViewBuilder
    private func SideMenu() -> some View{
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .trailing)
    }
    
    @ViewBuilder
    private func SideCart() -> some View{
        SideView(isShowing: $presentSideCart, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideCart)), direction: .trailing)
    }
    

    
}

#Preview {
    HomeView()
}
