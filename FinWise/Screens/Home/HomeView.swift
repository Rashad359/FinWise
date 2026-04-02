//
//  HomeView.swift
//  FinWise
//
//  Created by Rashad on 15.03.26.
//

import SwiftUI

struct HomeView: View {
    @State private var something: String = ""
    var body: some View {
        
        ZStack {
            Color.mainGreen
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                topBar // <- Change name later
                
                incomeExpense
                    .padding(.bottom, 30)
                
                expenseProgressBar
                    .padding(.bottom, 10)
                
                progressText
                    .padding(.bottom, 32)
                
                VStack {
                    bannerView
                        .padding(.top, 33)
                        
                    
                    Spacer()
                }
                .frame(
                    minWidth: 0,
                    maxWidth: .infinity,
                    minHeight: 0,
                    maxHeight: .infinity,
                    alignment: .center
                )
                .background(Color.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}

extension HomeView {
    var topBar: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hi, Welcome Back")
                    .bold()
                
                Text("Good morning")
                    .font(.system(size: 14))
            }
            
            Spacer()
            
            Image("notificationIcon")
        }
        .padding(.horizontal, 36)
    }
    
    
    
    
    var incomeExpense: some View {
        HStack(spacing: 30) {
            VStack(alignment: .leading, spacing: 1) {
                HStack(spacing: 6) {
                    Image("income")
                    
                    Text("Total Balance")
                        .font(.system(size: 12))
                }
                
                Text("$7,783.00")
                    .foregroundStyle(Color.backgroundGreenWhiteAndLetters)
                    .bold()
                    .font(.system(size: 24))
            }
            
            Divider()
                .frame(width: 1, height: 42)
                .background(Color.white)
            
            VStack(alignment: .leading, spacing: 1) {
                HStack(spacing: 6) {
                    Image("expense")
                    
                    Text("Total Expense")
                        .font(.system(size: 12))
                }
                
                Text("-$1,187.40")
                    .foregroundStyle(Color.oceanBlueButton)
                    .bold()
                    .font(.system(size: 24))
            }
        }
        .padding(.top, 41)
    }
    
    
    
    
    var expenseProgressBar: some View {
        HStack {
            Text("30%")
                .foregroundStyle(Color.white)
                .font(.system(size: 14))
                .fontWeight(.medium)
                .frame(width: 50, alignment: .center)
            
            Capsule()
                .fill(Color.white)
                .frame(height: 27)
                .overlay(
                    HStack {
                        Spacer()
                        
                        Text("$20,000.00")
                            .padding(.trailing, 14)
                            .italic()
                            .fontWeight(.medium)
                            .font(.system(size: 15))
                    }
                )
        }
        .background(Color.black)
        .clipShape(Capsule())
        .padding(.horizontal, 50)
    }
    
    
    
    
    var progressText: some View {
        HStack {
            Image("check")
            
            Text("30% of your expenses. Looks good!")
                .font(.system(size: 15))
        }
    }
    
    
    
    
    
    var bannerView: some View {
        HStack {
            VStack {
                Image("car") // <- Add progress circle
                
                Text("Savings \n On Goals")
                    .padding(.leading, 10)
                    .multilineTextAlignment(.center)
            }
            
            Divider()
                .frame(width: 2, height: 108)
                .background(Color.white)
                .padding(.vertical, 20)
                .padding(.trailing, 8)
                .padding(.leading, 8)
            
            VStack(alignment: .leading, spacing: 11) {
                HStack {
                    Image("salary")
                    
                    VStack(alignment: .leading) {
                        Text("Revenue Last Week")
                            .font(.system(size: 12))
                        
                        Text("$4,000.00")
                    }
                }
                
                Divider()
                    .frame(width: 161, height: 2)
                    .background(Color.white)
                
                HStack {
                    Image("food")
                    
                    VStack(alignment: .leading) {
                        Text("Food Last Week")
                            .font(.system(size: 12))
                        
                        Text("-$100.00")
                    }
                }
            }
            .padding(.trailing, 12)
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
        )
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.red)
        )
        .padding(.horizontal, 20)
    }
}
