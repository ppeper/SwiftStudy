//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: BOX
    }
}

#Preview {
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return ExternalWeblinkView(animal: animals[2])
}
