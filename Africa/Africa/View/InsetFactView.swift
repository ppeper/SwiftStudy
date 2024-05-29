//
//  InsetFactView.swift
//  Africa
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

#Preview {
    
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    return InsetFactView(animal: animals[1])
}
