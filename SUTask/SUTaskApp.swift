//
//  SUTaskApp.swift
//  SUTask
//
//  Created by Anna Ershova on 05.12.2021.
//

import SwiftUI

@main
struct SUTaskApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ColorViewModel())
        }
    }
}
