//
//  LaunchTitle.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct LaunchTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .multilineTextAlignment(.center)
            .font(.system(size: 14))
            .padding(.horizontal, 50)
            .foregroundStyle(.darkModeGreenBlack)
    }
}

extension View {
    func launchTitle() -> some View {
        self.modifier(LaunchTitle())
    }
}
