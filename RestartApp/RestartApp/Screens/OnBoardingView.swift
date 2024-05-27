//
//  OnBoardingView.swift
//  RestartApp
//
//  Created by 박준후 on 5/27/24.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK - PROPERTY
    @AppStorage("onboarding") var isOnBoardingViewActive: Bool = true
    
    // MARK - BODY
    
    var body: some View {
        VStack(spacing: 20) {
            Text("OnBoarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnBoardingViewActive = false
            }) {
                Text("Start")
            }
        } //: VSTACK
    }
}

#Preview {
    OnBoardingView()
}
