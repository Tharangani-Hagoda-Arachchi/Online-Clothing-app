//
//  Categories.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-28.
//

var product1: Product = .init(title: "Casual Extended Sleeves color block women orange Top", price: 670, description: "Orange and Grey top Colourblocked v-neck, long", images: ["P01_01", "P01_02","P01_03"], category: .TShirt, gender: .Female)
var product2: Product = .init(title: "Casual Extended Short Sleeves color block women Brown Top", price: 670, description: "Brown top Colourblocked v-neck, short", images: ["P02_01", "P02_02","P02_03"], category: .TShirt, gender: .Female)
var product3: Product = .init(title: "Casual Extended Short Sleeves color block women White Top", price: 670, description: "White top Colourblocked v-neck, short", images: ["P03_01", "P03_02","P03_03"], category: .TShirt, gender: .Female)
var product4: Product = .init(title: "Casual Extended Sleeves color block women White Top", price: 670, description: "White top Colourblocked Colar, Short", images: ["P04_01", "P04_02","P04_03"], category: .TShirt, gender: .Female)

let hashtags = ["#2024", "#spring", "#collection", "#fall", "#dress", "#wintercollection", "#fashion"]


var cartItems: [CartItem] = [.init(product: product1, count: 1), .init(product: product2, count: 2), .init(product: product3, count: 3)]

var products: [Product] = [product1, product2, product3, product4]
