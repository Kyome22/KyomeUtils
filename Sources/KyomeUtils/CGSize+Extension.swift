//
//  CGSize+Extension.swift
//  
//
//  Created by Takuto Nakamura on 2021/04/14.
//

import CoreGraphics

public func + (left: CGSize, right: CGSize) -> CGSize {
    return CGSize(width: left.width + right.width, height: left.height + right.height)
}

public func += (left: inout CGSize, right: CGSize) {
    left = left + right
}

public func - (left: CGSize, right: CGSize) -> CGSize {
    return CGSize(width: left.width - right.width, height: left.height - right.height)
}

public func -= (left: inout CGSize, right: CGSize) {
    left = left - right
}

public func * (left: CGFloat, right: CGSize) -> CGSize {
    return CGSize(width: left * right.width, height: left * right.height)
}

public func * (left: CGSize, right: CGFloat) -> CGSize {
    return CGSize(width: right * left.width, height: right * left.height)
}

public func *= (left: inout CGSize, right: CGFloat) {
    left = left * right
}

public func / (left: CGSize, right: CGFloat) -> CGSize {
    precondition(right != 0, "divide by zero")
    return CGSize(width: left.width / right, height: left.height / right)
}

public func /= (left: inout CGSize, right: CGFloat) {
    precondition(right != 0, "divide by zero")
    left = left / right
}

public extension CGSize {
    // widthとheightの大きさが同じ時の初期化
    init(_ side: CGFloat) {
        self.init(width: side, height: side)
    }
    // Intにキャスト
    var intSize: CGSize {
        return CGSize(width: Int(self.width), height: Int(self.height))
    }
}
