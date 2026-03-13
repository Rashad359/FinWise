//
//  OnboardingView.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct OnboardingView: View {
    
    @State private var currentID: Int? = 0
    
    @State private var navigateToLaunch: Bool = false
    
    var body: some View {
        ZStack {
            
            Color.mainGreen
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text(currentID == 0 ? "Welcome to Expense Manager".capitalized : "¿Are you ready to take control of your finaces?".capitalized)
                    .onboardingTitle(id: currentID)

                
                Spacer()
                
                ZStack {
                    UnevenRoundedRectangle(
                        topLeadingRadius: 48,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 48,
                        style: .continuous
                    )
                    .fill(Color.backgroundGreenWhiteAndLetters)
                    .ignoresSafeArea()
                    
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<2, id: \.self) { index in
                                    Image("OnboardingTemplate\(index)")
                                        .containerRelativeFrame(.horizontal)
                                }
                            }
                            .scrollTargetLayout()
                        }
                        .scrollTargetBehavior(.paging)
                        .scrollPosition(id: $currentID)
                        
                        
                        Button {
                            let currentIndex = currentID ?? 0
                            
                            if currentIndex < 1 {
                                withAnimation(.easeInOut) {
                                    currentID = currentIndex + 1
                                }
                            } else {
                                // <- Redirect to launch screen
                                navigateToLaunch = true
                            }
                        } label: {
                            Text("Next")
                                .font(.system(size: 30, weight: .semibold))
                                .foregroundStyle(.darkModeGreenBar)
                        }
                        PageControl(numberOfPages: 2, currentPage: currentID ?? 0)
                    }
                    
                    
                }
                .frame(maxHeight: 500)
            }
            
            
        }
        .navigationDestination(isPresented: $navigateToLaunch) {
            LaunchView()
        }
    }
}

#Preview {
    OnboardingView()
}
