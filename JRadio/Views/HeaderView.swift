//
//  HeaderView.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 16.03.24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image(.jay)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 120, height: 120)
                .shadow(radius: 2, x: 2.2, y: 2.2)
            
            Text("𝑱𝒂𝒚'𝒔 \n   𝑾𝒆𝒃𝒓𝒂𝒅𝒊𝒐")
                .foregroundStyle(.orange)
                .shadow(radius: 2, x: 2.2, y: 2.2)
        }
    }
}

#Preview {
    HeaderView()
}
