//
//  CoverImageModel.swift
//  Africa
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

// Codeable: JSON 인코딩&디코딩을 쉽게해주는 typealias
struct CoverImage: Codable, Identifiable {
    let id: Int
    let name: String
}
