//
//  CardLabel.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct CardLabel: View {
    let title: String
    let caption: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(.systemGreen))
                .padding(.bottom, 10)
            Text(caption)
                .font(.caption)
                .foregroundColor(Color(.systemGray))
                .padding(.bottom, 10)
        }
    }
}
