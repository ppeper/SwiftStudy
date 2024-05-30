//
//  Shop.swift
//  Touchdown
//
//  Created by 박준후 on 5/30/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
