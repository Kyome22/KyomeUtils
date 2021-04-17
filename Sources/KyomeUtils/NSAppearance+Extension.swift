//
//  NSAppearance+Extension.swift
//  
//
//  Created by Takuto Nakamura on 2021/04/14.
//

import AppKit

public extension NSAppearance {
    var isDark: Bool {
        if self.name == .vibrantDark { return true }
        guard #available(macOS 10.14, *) else { return false }
        return self.bestMatch(from: [.aqua, .darkAqua]) == .darkAqua
    }
}
