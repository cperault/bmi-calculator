//
//  UnitCard.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct UnitCard: View {
    @EnvironmentObject var indexModel: IndexModel
    var body: some View {
        ZStack {
            CardBody()
            VStack {
                CardLabel(title: "Unit", caption: "Select Unit Type")
                Picker("Unit", selection: $indexModel.unit) {
                    Text("Metric").tag(IndexViewModel.metric)
                    Text("Imperial").tag(IndexViewModel.imperial)
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 200 )
            }
        }
        .frame(width: 300, height: 500, alignment: .center)
    }
}
