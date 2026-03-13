//
//  OnboardingTitle.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct OnboardingTitle: ViewModifier {
    var currentID: Int?
    
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.darkModeGreenBar)
            .font(.system(size: 30, weight: .semibold))
            .multilineTextAlignment(.center)
            .padding(.horizontal, 60)
            .animation(.easeInOut, value: currentID)
    }
}

extension View {
    func onboardingTitle(id: Int?) -> some View {
        self.modifier(OnboardingTitle(currentID: id))
    }
}
