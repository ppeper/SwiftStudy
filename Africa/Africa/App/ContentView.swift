//
//  ContentView.swift
//  Africa
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(
                        destination: AnimalDetailView(animal: animal)) {
                            AnimalListItemView(animal: animal)
                        }
                }
            } //: LIST
            .listStyle(.plain)
            .navigationTitle("Africa")
        } //: NAVIGATION
        
    }
}

#Preview {
    ContentView()
}
