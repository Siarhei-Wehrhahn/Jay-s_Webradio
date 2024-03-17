//
//  ContentView.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 16.03.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.bg)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            ScrollView {
                VStack {
                    HeaderView()
                        .padding(.trailing, 130)
                    
                    ZStack {
                        Text("Studio Nienburg \n24/7 das Beste aus allen Genres")
                            .foregroundStyle(.black)
                            .font(Font.system(size: 24))
                            .padding(.top, 3)
                            .padding(.leading, 3)
                        
                        Text("Studio Nienburg \n24/7 das Beste aus allen Genres")
                            .foregroundStyle(.white)
                            .font(Font.system(size: 24))
                    }
                    .shadow(radius: 2, x: 2.2, y: 2.2)
                    .padding(.bottom, 50)
                    
                    SoundPlayerView()
                    
                    ZStack {
                        Text("Hier könnt ihr mich Live sehen:")
                            .foregroundStyle(.black)
                            .padding(.trailing, 120)
                            .shadow(radius: 2, x: 2.2, y: 2.2)
                            .padding(.top, 3)
                            .padding(.leading, 3)
                        
                        Text("Hier könnt ihr mich Live sehen:")
                            .foregroundStyle(.white)
                            .padding(.trailing, 120)
                            .shadow(radius: 2, x: 2.2, y: 2.2)
                    }
                    
                    VideoPlayerView()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
