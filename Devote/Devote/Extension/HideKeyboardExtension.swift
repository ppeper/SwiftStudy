//
//  HideKeyboardExtension.swift
//  Devote
//
//  Created by 박준후 on 5/31/24.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboad() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
