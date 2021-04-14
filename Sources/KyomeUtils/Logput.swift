//
//  File.swift
//  
//
//  Created by Takuto Nakamura on 2021/04/14.
//

import Foundation.NSURL

func logput(_ items: Any...,
            file: String = #file,
            line: Int = #line,
            function: String = #function) {
    #if DEBUG
    let fileName = URL(fileURLWithPath: file).lastPathComponent
    var array: [Any] = ["💫Log: \(fileName)", "Line:\(line)", function]
    array.append(contentsOf: items)
    Swift.print(array)
    #endif
}
