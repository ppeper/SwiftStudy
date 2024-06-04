//
//  HeaderModel.swift
//  Avocados
//
//  Created by 박준후 on 6/4/24.
//

import Foundation

// MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
