//
//  LaunchView.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct LaunchView: View {
    
    // MARK: - Add transition animation to logo and other elements
    var body: some View {
        ZStack {
            
            Color.backgroundGreenWhiteAndLetters
                .ignoresSafeArea()
            
            VStack(spacing: 42) {
                VStack {
                    Logo(textColor: .mainGreen, iconColor: .mainGreen)
                    
                    Text("With this app you will change your view on finances forever.")
                        .launchTitle()
                }
                
                VStack(spacing: 12) {
                    BaseNavigationButton(title: "Log In", destination: LogInView()) // <- Navigate to Log In View
                    
                    BaseNavigationButton(backgroundColor: .lightGreen, title: "Sign Up", destination: SignUpView()) // <- Navigate to Sign Up View
                    
                    
                    NavigationLink {
                        NewPasswordView() // <- Navigate to change password view
                    } label: {
                        Text("Forgot Password?")
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(.lettersAndIcons)
                    }
                }
                .frame(width: 207)
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    LaunchView()
}
