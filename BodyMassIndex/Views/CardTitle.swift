//
//  CardTitle.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

struct TitleCard: View {
    var cardTitle: String
    var cardCaption: String
    
    var body: some View {
        ZStack {
            CardBody()
            CardLabel()
        }
        
        //Index title, Index caption = BMI Calculator
    }
}
