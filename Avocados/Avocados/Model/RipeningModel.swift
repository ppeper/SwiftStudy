//
//  RipeningModel.swift
//  Avocados
//
//  Created by 박준후 on 6/4/24.
//

import Foundation

// MARK: - RIPENING MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
