//
//  LoginBottomView.swift
//  FinWise
//
//  Created by Rashad on 16.03.26.
//

import SwiftUI

struct LoginBottomView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                UnevenRoundedRectangle(
                    topLeadingRadius: 48,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 48,
                    style: .continuous
                )
                .fill(Color.white)
            )
            .ignoresSafeArea()
    }
}

extension View {
    func loginBottomView() -> some View {
        self.modifier(LoginBottomView())
    }
}
