//
//  PageModel.swift
//  PinchApp
//
//  Created by 박준후 on 5/28/24.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumnailName: String {
        return "thumb-" + imageName
    }
}
