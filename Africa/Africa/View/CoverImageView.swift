//
//  CoverImageView.swift
//  Africa
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
}
