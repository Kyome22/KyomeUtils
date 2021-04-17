//
//  Operations.swift
//
//
//  Created by Takuto Nakamura on 2021/04/14.
//

import AppKit

public extension String {
    var localized: String {
        return NSLocalizedString(self, comment: self)
    }
}
