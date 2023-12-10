/*
 Logput.swift
 KyomeUtils

 Created by Takuto Nakamura on 2021/04/14.
 Copyright © 2021 Studio Kyome. All rights reserved.
*/

import Foundation

public func logput(
    _ items: Any...,
    file: String = #file,
    line: Int = #line,
    function: String = #function
) {
#if DEBUG
    let fileName = URL(fileURLWithPath: file).lastPathComponent
    var array: [Any] = ["💫Log: \(fileName)", "Line:\(line)", function]
    array.append(contentsOf: items)
    Swift.print(array)
#endif
}
