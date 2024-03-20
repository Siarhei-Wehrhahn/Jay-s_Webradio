//
//  JRadioApp.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 16.03.24.
// Version 1.0.0

import SwiftUI
import UIKit
import AVFoundation


@main
struct JRadioApp: App {
    @StateObject private var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                if viewRouter.currentPage == .splash {
                    SplashView()
                        .preferredColorScheme(.light) // Deaktiviere den Dark Mode
                        .onAppear {
                            // Nach 2 sek den viewRouter auf HomeView setzen
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation {
                                    viewRouter.currentPage = .home
                                }
                            }
                        }
                } else {
                    InfoTextView()
                        .preferredColorScheme(.light)
                }
            }
        }
    }
}
