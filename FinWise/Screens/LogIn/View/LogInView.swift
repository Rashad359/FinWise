//
//  LogInView.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct LogInView: View {
    
    @State private var viewModel = LogInViewModel()
    
    var body: some View {
        ZStack {
            Color.mainGreen
                .ignoresSafeArea()
            
            VStack(spacing: 65) {
                
                Spacer()
                
                Text("Welcome")
                    .launchText()
                
                VStack {
                    
                    Spacer()
                    //Login and password view
                    inputFields
                    
                    Spacer()
                    
                    middleView
                    
                    Spacer()
                    
                    bottomView
                    
                    Spacer()
                }
                .padding(.horizontal, 38)
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
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden()
        .navigationDestination(isPresented: $viewModel.goToHome) {
            HomeView()
        }
    }
}

#Preview {
    LogInView()
}


extension LogInView {
    
    var inputFields: some View {
        VStack(spacing: 23) {
            InputField(title: "Username Or Email", placeholder: "example@example.com", text: $viewModel.email)
            
            InputPasswordField(title: "Password", text: $viewModel.password)
        }
    }
    
    var middleView: some View {
        VStack(spacing: 19) {
            BaseButton(title: "Log In", action: {
                // <- Check if login and password are correct first
                viewModel.goToHome = true
            })
                .frame(width: 207)
            
            NavigationLink {
                NewPasswordView() // <- Navigate to change password view
            } label: {
                Text("Forgot Password?")
                    .font(.system(size: 14, weight: .semibold))
                    .foregroundStyle(.lettersAndIcons)
            }
        }
    }
    
    var bottomView: some View {
        VStack(spacing: 20) {
            Text("or sign up with")
                .font(.system(size: 13, weight: .light))
            
            HStack {
                Button {
                    // <- Facebook log in flow
                } label: {
                    Image("facebookIcon")
                        .renderingMode(.template)
                }
                
                Button {
                    // <- Google log in flow
                } label: {
                    Image("googleIcon")
                        .renderingMode(.template)
                }
            }
            .foregroundStyle(.black)
            
            HStack(spacing: 4) {
                Text("Don't have an account?") // <- Sign up flow
                    .font(.system(size: 13, weight: .light))
                
                NavigationLink {
                    SignUpView()
                } label: {
                    Text("Sign Up")
                        .font(.system(size: 13, weight: .light))
                        .foregroundStyle(.blueButton)
                }
            }
        }
    }
}
