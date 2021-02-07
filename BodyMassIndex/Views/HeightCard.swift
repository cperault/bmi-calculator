//
//  HeightCard.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct HeightCard: View {
    @EnvironmentObject var indexModel: IndexModel
    
    var body: some View {
        ZStack {
            CardBody()
            VStack {
                CardLabel(title: "Height", caption: "Enter Your Height \(unitMeasurement)")
                switch indexModel.unit {
                case IndexViewModel.metric:
                    VStack {
                        SliderValue(value: indexModel.metricHeight)
                        Slider(value: $indexModel.metricHeight, in: 30...300, step: 1.0)
                            .accentColor(Color(.systemGreen))
                            .frame(width: 150)
                    }
                case IndexViewModel.imperial:
                    HStack {
                        VStack {
                            SliderValue(value: indexModel.imperialHeightFT)
                            Slider(value: $indexModel.imperialHeightFT, in: 1...9, step: 1.0)
                                .accentColor(Color(.systemGreen))
                                .frame(width: 80)
                        }
                        
                        VStack {
                            SliderValue(value: indexModel.imperialHeightIN)
                            Slider(value: $indexModel.imperialHeightIN, in: 0...11, step: 0.5)
                                .accentColor(Color(.systemGreen))
                                .frame(width: 80)
                        }
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
            return "(CM)"
        case IndexViewModel.imperial:
            return "(Ft. & In.)"
        }
    }
}




