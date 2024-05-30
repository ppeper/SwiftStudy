//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by 박준후 on 5/30/24.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
