/*
 String+Extension.swift
 KyomeUtils

 Created by Takuto Nakamura on 2021/04/14.
 Copyright © 2021 Studio Kyome. All rights reserved.
*/

import Foundation

public extension String {
    var infoString: String {
        guard let str = Bundle.main.object(forInfoDictionaryKey: self) as? String else {
            fatalError("infoString key is not found.")
        }
        return str
    }
}
