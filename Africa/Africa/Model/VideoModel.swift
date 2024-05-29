//
//  VideoModel.swift
//  Africa
//
//  Created by 박준후 on 5/29/24.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
