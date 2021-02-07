//
//  BodyMassIndexApp.swift
//  BodyMassIndex
//
//  Created by Christopher Perault on 2/6/21.
//

import SwiftUI

@main
struct BodyMassIndexApp: App {
    @StateObject var indexModel: IndexModel = IndexModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(indexModel)
        }
    }
}
