//
//  TeamModel.swift
//  learning-swiftUI
//
//  Created by Vinicius on 21/11/22.
//

import Foundation

struct Team: Identifiable {
    let id: UUID = UUID()
    let name: String
    let description: String
    let flag: String
    let video: String
}
