//
//  InfoView.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 24.03.24.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack {
            Image(.bg)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.black.opacity(0.5), Color.black.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            ZStack {
                Text("Bei störungen können sie sich gerne beim Developer melden!\nMit Bewertungen der App kann sie stetig verbessert werden.")
                    .foregroundStyle(.black)
                    .font(Font.system(size: 24))
                    .padding(.top, 3)
                    .padding(.leading, 3)
                
                Text("Bei störungen können sie sich\ngerne beim Developer melden!\nMit Bewertungen der App kann\nsie stetig verbessert werden.")
                    .foregroundStyle(.white)
                    .font(Font.system(size: 24))
            }
            .shadow(radius: 2, x: 2.2, y: 2.2)
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    InfoView()
}
