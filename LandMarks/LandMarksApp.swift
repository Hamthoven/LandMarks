//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by 강유진 on 2022/02/09.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
