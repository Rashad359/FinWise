//
//  SignUpView.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct SignUpView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var phoneNumber: String = ""
    @State private var dateOfBirth: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var navigateToHome: Bool = false
    
    var body: some View {
        ZStack {
            Color.mainGreen
                .ignoresSafeArea()
            
            
            VStack(spacing: 65) {
                
                Spacer()
                
                Text("Create Account")
                    .launchText()
                
                ScrollView {
                    VStack(spacing: 28) {
                        inputFields
                        
                        bottomView
                        
                        Spacer()
                    }
                    .padding(.horizontal, 37)
                    .loginBottomView()
                }
                .background(Color.white)
                .clipShape(
                    UnevenRoundedRectangle(
                        topLeadingRadius: 48,
                        bottomLeadingRadius: 0,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 48,
                        style: .continuous
                    )
                )
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $navigateToHome) {
            HomeView()
        }
    }
}

#Preview {
    SignUpView()
}

extension SignUpView {
    var inputFields: some View {
        VStack(spacing: 12) {
            InputField(title: "Full Name", placeholder: "John Doe", text: $fullName)
                .padding(.top, 27)
            
            InputField(title: "Email", placeholder: "example@example.com", text: $email)
            
            InputField(title: "Mobile Number", placeholder: "+ 123 456 789", text: $phoneNumber)
            
            InputField(title: "Date Of Birth", placeholder: "DD /MM /YYYY", text: $dateOfBirth)
            
            InputPasswordField(title: "Password", text: $password)
            
            InputPasswordField(title: "Confirm Password", text: $confirmPassword)
        }
    }
    
    var bottomView: some View {
        VStack(spacing: 13) {
            Text("By continuing, you agree to Terms of Use and Privacy Policy.") // <- make them links to terms of use and privacy policy
                .font(.system(size: 12, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 70)
            
            BaseButton(title: "Sign Up") {
                // <- check the inputs, then sign up
                navigateToHome = true
                
            }
            .frame(width: 207)
            
            HStack(spacing: 4) {
                Text("Already have an account?") // <- Sign up flow
                    .font(.system(size: 13, weight: .light))
                
                NavigationLink {
                    LogInView()
                } label: {
                    Text("Log In")
                        .font(.system(size: 13, weight: .light))
                        .foregroundStyle(.blueButton)
                }
            }
        }
    }
}
