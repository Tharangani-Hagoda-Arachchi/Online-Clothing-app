//
//  FooterView.swift
//  Online Clothing app
//
//  Created by Malsha Bopage on 2024-03-29.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack{
            Image("Feminine Black Purple Brand Fashion Logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.bottom, 10)
            Image("sociallogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

#Preview {
    FooterView()
}
