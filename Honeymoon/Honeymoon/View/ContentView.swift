//
//  ContentView.swift
//  Honeymoon
//
//  Created by 박준후 on 6/7/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[1])
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("SUCCESS"),
                message: Text("Wishing a lovely and most precious of the times together for the amzing couple."),
                dismissButton: .default(Text("Happy Honeymonn!"))
            )
        }
    }
}

#Preview {
    ContentView()
}
