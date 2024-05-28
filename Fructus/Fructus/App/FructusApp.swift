//
//  FructusApp.swift
//  Fructus
//
//  Created by 박준후 on 5/28/24.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
