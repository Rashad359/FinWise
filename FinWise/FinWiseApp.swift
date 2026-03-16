//
//  FinWiseApp.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

@main
struct FinWiseApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                SplashView()
                    .preferredColorScheme(.light)
            }
        }
    }
}
