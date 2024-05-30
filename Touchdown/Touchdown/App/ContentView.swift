//
//  ContentView.swift
//  Touchdown
//
//  Created by 박준후 on 5/30/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding()
                    .background(Color.white)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
                
                FooterView()
                    .padding(.horizontal)
            } //: VSTACK
            .background(colorBackground)
        } //: ZSTACK
    }
}

#Preview {
    ContentView()
}
