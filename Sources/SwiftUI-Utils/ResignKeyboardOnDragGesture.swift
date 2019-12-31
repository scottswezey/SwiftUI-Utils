//
//  File.swift
//  SwiftUI Utils
//
//  Created by Scott on 12/31/19.
//  Copyright © 2019 Scott Swezey. All rights reserved.
//

#if canImport(UIKit)
// I'm assuming this means UIApplication will be available. There is/may be a better way to ensure we are only extending existing code where it makes sense.

import SwiftUI

extension UIApplication {
    func endEditing(_ force: Bool) {
        self.windows
            .filter{$0.isKeyWindow}
            .first?
            .endEditing(force)
    }
}

struct ResignKeyboardOnDragGesture: ViewModifier {
    var gesture = DragGesture().onChanged{_ in
        UIApplication.shared.endEditing(true)
    }
    func body(content: Content) -> some View {
        content.gesture(gesture)
    }
}

extension View {
    func resignKeyboardOnDragGesture() -> some View {
        return modifier(ResignKeyboardOnDragGesture())
    }
}

#endif
