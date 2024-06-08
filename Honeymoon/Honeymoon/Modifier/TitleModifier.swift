//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by 박준후 on 6/7/24.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
