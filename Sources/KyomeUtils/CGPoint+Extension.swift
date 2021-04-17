//
//  CGPoint+Extension.swift
//  
//
//  Created by Takuto Nakamura on 2021/04/14.
//

import CoreGraphics

public func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

public func += (left: inout CGPoint, right: CGPoint) {
    left = left + right
}

public func - (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

public func -= (left: inout CGPoint, right: CGPoint) {
    left = left - right
}

public func * (left: CGFloat, right: CGPoint) -> CGPoint {
    return CGPoint(x: left * right.x, y: left * right.y)
}

public func * (left: CGPoint, right: CGFloat) -> CGPoint {
    return CGPoint(x: right * left.x, y: right * left.y)
}

public func *= (left: inout CGPoint, right: CGFloat) {
    left = left * right
}

public func / (left: CGPoint, right: CGFloat) -> CGPoint {
    precondition(right != 0, "divide by zero")
    return CGPoint(x: left.x / right, y: left.y / right)
}

public func /= (left: inout CGPoint, right: CGFloat) {
    precondition(right != 0, "divide by zero")
    left = left / right
}

public extension CGPoint {
    // xとyが同じ時の初期化
    init(_ scalar: CGFloat) {
        self.init(x: scalar, y: scalar)
    }
    // Intにキャスト
    var intPoint: CGPoint {
        return CGPoint(x: Int(self.x), y: Int(self.y))
    }
    // 二点間の距離を返す
    func length(from: CGPoint) -> CGFloat {
        return sqrt(pow(self.x - from.x, 2.0) + pow(self.y - from.y, 2.0))
    }
    // 二点を結んだ線分の角度（ラジアン）を返す
    func radian(from: CGPoint) -> CGFloat {
        return atan2(self.y - from.y, self.x - from.x)
    }
    // 二点を結んだ線分の角度（度）を返す
    func degree(from: CGPoint) -> CGFloat {
        return atan2(self.y - from.y, self.x - from.x) * 180 / CGFloat.pi
    }
}
