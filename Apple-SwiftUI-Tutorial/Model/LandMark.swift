//
//  LandMark.swift
//  Apple-SwiftUI-Tutorial
//
//  Created by Kevin Mattocks on 2/17/23.
//

import Foundation

struct Landmark: Hashable, Codable {
    let id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
}
