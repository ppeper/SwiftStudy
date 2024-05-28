//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Frutus", labelImage: "info.circle")
}
