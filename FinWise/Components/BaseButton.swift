//
//  BaseButton.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct BaseButton: View {
    
    var backgroundColor: Color = Color.mainGreen
    
    var title: String
    
    var action: (() -> ())?
    
    var body: some View {
        Button {
            action?()
        } label: {
            Text(title)
                .frame(height: 45)
                .frame(maxWidth: .infinity)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.lettersAndIcons)
                .background(
                    RoundedRectangle(cornerRadius: 0)
                        .fill(backgroundColor)
                        .clipShape(.capsule)
                )
        }
    }
}

#Preview {
    BaseButton(title: "Log In")
}
