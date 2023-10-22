//
//  Item.swift
//  SATIP
//
//  Created by Flow on 21.10.23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
