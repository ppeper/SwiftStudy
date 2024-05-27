//
//  ContentView.swift
//  RestartApp
//
//  Created by 박준후 on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnBoardingViewActive {
                OnBoardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
