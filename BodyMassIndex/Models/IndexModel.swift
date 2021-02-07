//
//  IndexModel.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

class IndexModel: ObservableObject {
    @Published var unit: IndexViewModel = IndexViewModel.metric
    @Published var metricHeight: Double = 170
    @Published var metricWeight: Double = 65
    @Published var imperialHeightFT: Double = 6
    @Published var imperialHeightIN: Double = 2.0
    @Published var imperialWeight: Double = 150
    @Published var results: Double = 0
    
    // BMI (imperial) = 703 x mass / height^2
    // BMI (metric) = mass / height^2
    func calculateBMI() {
        
        if unit == IndexViewModel.imperial {
            let heightInInchesTotal = (imperialHeightFT * 12) + imperialHeightIN
            results = 703 * (imperialWeight / pow(heightInInchesTotal, 2))
        } else {
            results = metricWeight / pow(metricHeight / 100, 2)
        }
    }
    
    // MARK: - Computed props
    
    var resultSeverity: String {
        switch results {
        case 0..<16:
           return "Severe Thinness"
        case 16..<17:
            return "Moderate Thinness"
        case 17..<18.5:
            return "Mild Thinness"
        case 18.5..<25:
            return "Normal"
        case 25..<30:
            return "Overweight"
        case 30..<35:
            return "Obese Class I"
        case 35..<40:
            return "Obese Class II"
        case 40...:
            return "Obese Class III"
        default:
            return "Error. Please try again."
        }
    }
}
