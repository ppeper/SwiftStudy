//
//  FactModel.swift
//  Avocados
//
//  Created by 박준후 on 6/4/24.
//

import Foundation

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
    
}
