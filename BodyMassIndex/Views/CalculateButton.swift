//
//  CalculateButton.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct CalculateButton: View {
    @EnvironmentObject var indexModel: IndexModel
    @Binding var index: Int
    
    var body: some View {
         Text("CALCULATE")
            .font(.caption2)
            .fontWeight(.bold)
            .padding(.all, 8)
            .foregroundColor(Color(.white))
            .background(Color(.systemGreen))
            .cornerRadius(20)
            .frame(height: 100)
            .padding(.top, 50)
            .onTapGesture {
                indexModel.calculateBMI()
                moveToNextCard()
            }
    }
    
    func moveToNextCard() {
        withAnimation{
            if index < 4 {
                index += 1
            } else {
                index = 0
            }
        }
    }
}
