//
//  Quote.swift
//  iBooks
//
//  Created by Yery Castro on 12/4/24.
//

import Foundation
import SwiftData

@Model
final class Quote {
    var creationDate: Date = Date.now
    var text: String
    var page: String?
    
    init(text: String, page: String? = nil) {
        self.text = text
        self.page = page
    }
    
    var book: Book?
}
