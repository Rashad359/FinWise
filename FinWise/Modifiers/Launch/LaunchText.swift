//
//  LaunchFont.swift
//  FinWise
//
//  Created by Rashad on 16.03.26.
//

import SwiftUI

struct LaunchText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.poppinsMid)
            .fontWeight(.semibold)
            .padding(.top, 65)
    }
}

extension View {
    func launchText() -> some View {
        self.modifier(LaunchText())
    }
}
