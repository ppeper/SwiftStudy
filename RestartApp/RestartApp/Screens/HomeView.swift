//
//  HomeView.swift
//  RestartApp
//
//  Created by 박준후 on 5/27/24.
//

import SwiftUI

struct HomeView: View {
    // MARK - PROPERTY
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
        }
    }
}

#Preview {
    HomeView()
}
