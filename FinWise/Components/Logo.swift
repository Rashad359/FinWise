//
//  LogoView.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct Logo: View {
    var textColor: Color = .white
    var iconColor: Color = .darkModeGreenBar
    
    var body: some View {
        VStack(spacing: 8) {
            Image("MainLogo")
                .renderingMode(.template)
                .foregroundStyle(iconColor)
            
            Text("FinWise")
                .font(.poppinsLarge)
                .fontWeight(.semibold)
                .foregroundStyle(textColor)
        }
    }
}

#Preview {
    Logo()
}
