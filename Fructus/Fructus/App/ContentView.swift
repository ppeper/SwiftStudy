//
//  ContentView.swift
//  Fructus
//
//  Created by 박준후 on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)
                    ) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //: BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } //: NAVIGATION
    }
}

#Preview {
    ContentView()
}
