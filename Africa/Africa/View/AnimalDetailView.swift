//
//  AnimalDetailView.swift
//  Africa
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HEAD IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                
            } //: VSTACK
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: SCROLL
    }
}

#Preview {
    
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    return NavigationStack {
        AnimalDetailView(animal: animals[1])
    }
}
