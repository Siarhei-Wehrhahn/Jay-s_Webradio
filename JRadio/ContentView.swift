//
//  ContentView.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 16.03.24.
//

import SwiftUI
import MessageUI

struct ContentView: View {
    let url = "info@jayswebradio.com"
    
    var body: some View {
        ZStack {
            Image(.bg)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(1.0), Color.black.opacity(0.7), Color.black.opacity(0.0)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
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
                    
                    HStack {
                        ZStack {
                            Text("Für Fragen aller Art\nkönnt ihr mir gerne eine\nE-Mail schreiben.")
                                .foregroundStyle(.black)
                                .shadow(radius: 2, x: 2.2, y: 2.2)
                                .padding(.top, 3)
                                .padding(.leading, 3)
                            
                            Text("Für Fragen aller Art\nkönnt ihr mir gerne eine\nE-Mail schreiben.")
                                .foregroundStyle(.white)
                                .shadow(radius: 2, x: 2.2, y: 2.2)
                        }
                        .offset(CGSize(width: -65.0, height: 0.0))
                        
                        Button {
                            if let emailURL = URL(string: url), UIApplication.shared.canOpenURL(emailURL)
                            {
                                UIApplication.shared.open(emailURL, options: [:], completionHandler: nil)
                            }
                        } label: {
                            Image(systemName: "envelope.fill")
                                .foregroundStyle(.white)
                                .font(Font.system(size: 24))
                                .offset(CGSize(width: 25, height: 0))
                        }
                    }
                    .padding()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
