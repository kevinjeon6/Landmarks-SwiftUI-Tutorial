//
//  Apple_SwiftUI_TutorialApp.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/15/23.
//

import SwiftUI

@main
struct Apple_SwiftUI_TutorialApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
