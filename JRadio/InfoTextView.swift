//
//  InfoTextView.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 20.03.24.
//

import SwiftUI

struct InfoTextView: View {
    var body: some View {
        ZStack {
            Image(.bg)
                .resizable()
                .ignoresSafeArea(edges: .all)
                .scaledToFill()
            
            Text("Bei störungen können sie \nsich gerne beim Developer melden! \nMit bewertungen der App kann sie \nstetig verbessert werden.")
                .foregroundStyle(.black)
                .font(Font.system(size: 22))
                .bold()
                .padding()
                .padding(.leading, 2)
                .padding(.top, 2)
                .padding(.top, 300)
            
            
            Text("Bei störungen können sie \nsich gerne beim Developer melden! \nMit bewertungen der App kann sie \nstetig verbessert werden.")
                .foregroundStyle(.white)
                .font(Font.system(size: 22))
                .bold()
                .padding()
                .padding(.top, 300)
        }
    }
}

#Preview {
    InfoTextView()
}
