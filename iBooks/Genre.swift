//
//  Genre.swift
//  iBooks
//
//  Created by Yery Castro on 15/4/24.
//

import SwiftUI
import SwiftData

@Model
final class Genre {
    var name: String
    var color: String
    var books: [Book]?
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    var hexColor: Color {
        Color(hex: self.color) ?? .red
    }
}
