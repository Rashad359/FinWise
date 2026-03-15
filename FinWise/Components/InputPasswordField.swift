//
//  InputPasswordField.swift
//  FinWise
//
//  Created by Rashad on 15.03.26.
//

import SwiftUI

struct InputPasswordField: View {
    var title: String
    @Binding var text: String
    @State private var isSecure: Bool = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .offset(x: 10)
                .font(.system(size: 15, weight: .semibold))
            
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    HStack(spacing: 9) {
                        ForEach(0..<8, id: \.self) { index in
                            Capsule()
                                .fill(Color.darkModeGreenBar)
                                .opacity(0.45)
                                .frame(width: 12, height: 12)
                        }
                    }
                    .padding(.leading, 34)
                    .zIndex(100)
                }
    
                
                Group {
                    if isSecure {
                        SecureField("", text: $text)
                            .baseField()
                            .overlay(
                                HStack {
                                    Spacer()
                                    
                                    Button {
                                        isSecure.toggle()
                                    } label: {
                                        Image(systemName: isSecure ? "eye.slash" : "eye")
                                            .foregroundStyle(.darkModeGreenBar)
                                    }
                                }
                                    .padding(.trailing, 12)
                            )
                        
                    } else {
                        TextField("", text: $text)
                            .baseField()
                            .overlay(
                                HStack {
                                    Spacer()
                                    
                                    Button {
                                        isSecure.toggle()
                                    } label: {
                                        Image(systemName: isSecure ? "eye.slash" : "eye")
                                            .foregroundStyle(.darkModeGreenBar)
                                    }
                                }
                                    .padding(.trailing, 12)
                            )
                    }
                }
            }
        }
    }
}

#Preview {
    InputPasswordField(title: "Password", text: .constant(""))
}
