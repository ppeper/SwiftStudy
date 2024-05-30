//
//  CatagoryModel.swift
//  Touchdown
//
//  Created by 박준후 on 5/30/24.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
