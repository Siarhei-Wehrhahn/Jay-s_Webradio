//
//  ViewRouter.swift
//  JRadio
//
//  Created by Siarhei Wehrhahn on 20.03.24.
//

import Foundation

enum Page {
    case splash
    case home
}

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .splash
}
