//
//  TeamController.swift
//  learning-swiftUI
//
//  Created by Vinicius on 21/11/22.
//

import Foundation

func flag(country: String) -> String {
    let base: UInt32 = 127397
    var s: String = ""
    for v: Unicode.Scalar in country.unicodeScalars {
        s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
    }
    return String(s)
}
