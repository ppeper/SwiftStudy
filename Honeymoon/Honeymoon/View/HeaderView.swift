//
//  HeaderView.swift
//  Honeymoon
//
//  Created by 박준후 on 6/7/24.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Button {
                showInfoView.toggle()
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView) {
                InfoView()
            }
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button {
                showGuideView.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        } //: HSTACK
        .padding()
    }
}

#Preview(traits: .fixedLayout(width: 375, height: 80)) {
    HeaderView(showGuideView: .constant(false), showInfoView: .constant(false))
}
