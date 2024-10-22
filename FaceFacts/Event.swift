// Event.swift

// Mark Edmunds

//10-18-24
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
