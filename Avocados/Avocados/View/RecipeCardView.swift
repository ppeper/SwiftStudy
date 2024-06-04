//
//  RecipeCardView.swift
//  Avocados
//
//  Created by 박준후 on 6/4/24.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    
    var recipe: Recipe
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        
                        VStack {
                            Image(systemName: "bookmark")
                                .font(.title.weight(.light))
                                .foregroundColor(Color.white)
                                .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            
                            Spacer()
                        } //: VSTACK
                    } //: HSTACK
                )
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(1...(recipe.rating), id: \.self) { item in
                        Image(systemName: "star.fill")
                            .font(.body)
                        .foregroundColor(Color.yellow)
                    }
                } //: HSTACK
                
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                }
                .font(.footnote)
                .foregroundColor(Color.gray)
            } //: VSTACK
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight") ,radius: 8, x: 0, y: 0)
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[0])
}
