//
//  SplashView.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 20.03.24.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        VStack {
            Image(.icon)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(edges: .all)
                .padding(.trailing, 50)
        }
    }
}

#Preview {
    SplashView()
}
