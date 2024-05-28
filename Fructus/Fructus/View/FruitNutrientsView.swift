//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by 박준후 on 5/28/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    let nutruients: [String] = ["Energy", "Suger", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional vlue per 100g") {
                ForEach(0..<nutruients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutruients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
