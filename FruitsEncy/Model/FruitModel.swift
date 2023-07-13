//
//  FruitModel.swift
//  FruitsEncy
//
//  Created by Sergey Hrabrov on 13.07.2023.
//

import SwiftUI
struct Fruit: Identifiable {
    var id = UUID()
    
    var title: String
    var headline: String
    var image: String
    var description: String
    
    var nutrition: [String]
    
    var gradientColors: [Color]
}
