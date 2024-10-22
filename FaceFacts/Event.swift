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
    var title: String
    var location: String
    var date: Date?
    
    init(title: String, location: String, date: Date? = nil) {
        self.title = title
        self.location = location
        self.date = date
    }
}
