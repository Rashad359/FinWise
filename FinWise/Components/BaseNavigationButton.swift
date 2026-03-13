//
//  BaseNavigationButton.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct BaseNavigationButton<Destination: View>: View {
    var backgroundColor: Color = Color.mainGreen
    
    var title: String
    
    var destination: Destination
    
    var body: some View {
        
        NavigationLink(destination: destination) {
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
    BaseNavigationButton(title: "test", destination: LaunchView())
}
