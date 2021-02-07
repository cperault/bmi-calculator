//
//  ContentView.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var indexModel: IndexModel
    @State var activeCardIndex: Int = 0
    var body: some View {
        VStack {
            Spacer()
            switch activeCardIndex {
            case 0:
                TitleCard()
            case 1:
                UnitCard()
            case 2:
                HeightCard()
            case 3:
                WeightCard()
            case 4:
                ResultsCard()
            default:
                TitleCard()
            }
            
            if activeCardIndex <= 2 || activeCardIndex == 4 {
                NextButton(index: $activeCardIndex)
            } else {
                CalculateButton(index: $activeCardIndex)
            }
        }
    }
}

