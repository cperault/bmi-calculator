//
//  ResultsCard.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct ResultsCard: View {
    @EnvironmentObject var indexModel: IndexModel
    
    var body: some View {
        ZStack {
            CardBody()
            VStack {
                CardLabel(title: "Result", caption: "Your Body Mass Index (BMI) is")
                Text(String(format: "%0.1f", indexModel.results))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemGreen))
                Text("kg/m^2")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray))
                Text("\(indexModel.resultSeverity)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemGray))
                
            }
        }
        .frame(width: 300, height: 500, alignment: .center)
    }
}
