//
//  InputField.swift
//  FinWise
//
//  Created by Rashad on 15.03.26.
//

import SwiftUI

struct InputField: View {
    var title: String
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .offset(x: 10)
                .font(.system(size: 15, weight: .semibold))
            
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(verbatim: placeholder)
                        .foregroundStyle(.lettersAndIcons)
                        .opacity(0.45)
                        .font(.system(size: 14, weight: .regular))
                        .padding(.leading, 34)
                        .zIndex(100)
                }
                TextField("", text: $text) // <- Change placeholder view
                    .baseField()
            }
        }
    }
}

#Preview {
    InputField(title: "Test title", placeholder: "test placeholder", text: .constant(""))
}
