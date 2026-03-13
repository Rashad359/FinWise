//
//  PageControl.swift
//  FinWise
//
//  Created by Rashad on 13.03.26.
//

import SwiftUI

struct PageControl: View {
    
    var numberOfPages: Int
    var currentPage: Int
    
    var body: some View {
        HStack {
            ForEach(0..<numberOfPages, id: \.self) { index in
                Capsule()
                    .frame(width: currentPage == index ? 13 : 11, height:  currentPage == index ? 13 : 11)
                    .foregroundStyle(currentPage == index ? .mainGreen : .clear)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: currentPage == index ? 0 : 2)
                            .fill(Color.darkModeGreenBlack)
                    )
                    .animation(.easeInOut, value: currentPage)
            }
        }
    }
}

#Preview {
    PageControl(numberOfPages: 2, currentPage: 0)
}
