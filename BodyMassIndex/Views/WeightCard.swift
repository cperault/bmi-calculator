//
//  WeightCard.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct WeightCard: View {
    @EnvironmentObject var indexModel: IndexModel
    
    var body: some View {
        ZStack {
            CardBody()
            VStack {
                CardLabel(title: "Weight", caption: "Enter Your Weight \(unitMeasurement)")
                switch indexModel.unit {
                case IndexViewModel.metric:
                    VStack {
                        SliderValue(value: indexModel.metricWeight)
                        Slider(value: $indexModel.metricWeight, in: 0...272, step: 1.0)
                            .accentColor(Color(.systemGreen))
                            .frame(width: 150)
                    }
                case IndexViewModel.imperial:
                        VStack {
                            SliderValue(value: indexModel.imperialWeight)
                            Slider(value: $indexModel.imperialWeight, in: 0...600, step: 1.0)
                                .accentColor(Color(.systemGreen))
                                .frame(width: 150)
                        }
                }
            }
        }
        .frame(width: 300, height: 500, alignment: .center)
    }
    // MARK: - Computed props

    var unitMeasurement: String {
        switch indexModel.unit {
        case IndexViewModel.metric:
            return "(KG)"
        case IndexViewModel.imperial:
            return "(LBS)"
        }
    }
}
