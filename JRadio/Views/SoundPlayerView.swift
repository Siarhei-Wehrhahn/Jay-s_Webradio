//
//  SoundPlayerView.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 16.03.24.
//

import SwiftUI

struct SoundPlayerView: View {
    let player = PlaySoundFromVideo() // Instanz der Klasse PlaySoundFromVideo erstellen
    @State private var isPlaying = false // Zustandsvariable, um den Wiedergabestatus zu verfolgen
    
    var body: some View {
        HStack {
            VStack {
                Button(action: {
                    if self.isPlaying {
                        self.player.pauseSound()
                    } else {
                        self.player.playSoundFromVideo(videoURL: URL(string: "http://stream.laut.fm/jayswebradio")!)
                    }
                    self.isPlaying.toggle() // Umkehrung des Wiedergabestatus
                }) {
                    VStack(spacing: 15) {
                        ZStack {
                            Text("24/7 Radio")
                                .font(Font.system(size: 20))
                                .padding(.top, 2)
                                .padding(.leading, 2)
                                .foregroundStyle(.black)
                            
                            Text("24/7 Radio")
                                .font(Font.system(size: 20))
                        }
                        
                        ZStack {
                            Image(systemName: isPlaying ? "pause" : "play")
                                .font(Font.system(size: 24))
                                .padding(.top, 2)
                                .padding(.leading, 2)
                                .foregroundStyle(.black)
                            
                            Image(systemName: isPlaying ? "pause" : "play")
                                .font(Font.system(size: 24))
                        }
                    }
                }
            }
            .padding()
            
            VStack {
                // Web-Icon mit einem Link zu einer Website
                Link(destination: URL(string: "http://www.jayswebradio.de")!) {
                    ZStack {
                        Image(systemName: "globe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .foregroundColor(.black)
                            .padding(.top, 2)
                            .padding(.leading, 2)
                        
                        Image(systemName: "globe")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 35, height: 35)
                            .foregroundColor(.blue)
                    }
                }
                
                ZStack {
                    Text("Besuche meine Website")
                        .foregroundColor(.black)
                        .padding(.top, 2)
                        .padding(.leading, 2)
                    
                    Text("Besuche meine Website")
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
    }
}

#Preview {
    SoundPlayerView()
}
