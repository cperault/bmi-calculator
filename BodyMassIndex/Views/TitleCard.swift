//
//  TitleCard.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct TitleCard: View {
    var body: some View {
        ZStack {
            CardBody()
            CardLabel(title: "Index", caption: "BMI Calculator")
        }
        .frame(width: 300, height: 500)
        //Index title, Index caption = BMI Calculator
    }
}
