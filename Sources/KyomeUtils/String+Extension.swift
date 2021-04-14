//
//  Operations.swift
//
//
//  Created by Takuto Nakamura on 2021/04/14.
//

import AppKit

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: self)
    }
}
