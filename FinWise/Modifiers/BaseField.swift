//
//  BaseField.swift
//  FinWise
//
//  Created by Rashad on 15.03.26.
//

import SwiftUI

struct BaseField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.leading, 34)
            .frame(height: 41)
            .background(
                Capsule()
                    .fill(Color.lightGreen)
            )
            .font(.system(size: 14, weight: .regular))
            .autocorrectionDisabled()
            .autocapitalization(.none)
    }
}

extension View {
    func baseField() -> some View {
        self.modifier(BaseField())
    }
}
