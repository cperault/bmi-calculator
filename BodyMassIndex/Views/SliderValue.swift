//
//  SliderValue.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct SliderValue: View {
    let value: Double
    var body: some View {
        Text(String(format: "%0.0f", value))
            .font(.title)
            .frame(width: 80, height: 80, alignment: .center)
            .foregroundColor(Color(.white))
            .background(Color(.systemGreen))
            .clipShape(Circle())
            .padding(10)
            
    }
}
