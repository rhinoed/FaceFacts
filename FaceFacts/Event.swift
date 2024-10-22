//
//  Event.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 10/22/24.
//

import Foundation
import SwiftData

@Model
class Event{
    var name: String
    var location: String
    var date: Date?
    
    init(name: String, location: String, date: Date? = nil) {
        self.name = name
        self.location = location
        self.date = date
    }
}
