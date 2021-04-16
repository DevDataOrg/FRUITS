//
//  FruitModel.swift
//  FRUITS
//
//  Created by Artyom Romanchuk on 15.04.2021.
//

import Foundation
import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
