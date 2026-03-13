//
//  SplashView.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            
            if isActive {
                OnboardingView()
            } else {
                Color.mainGreen
                    .ignoresSafeArea()
                
                Logo()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
