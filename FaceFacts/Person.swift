//
//  Person.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 3/28/24.
//

import Foundation
import SwiftData


@Model
class Person{
    var name: String
    var emailAddress: String
    var details: String
    var event: Event?
    
    init(name: String, emainAddress: String, details: String) {
        self.name = name
        self.emailAddress = emainAddress
        self.details = details
    }
}
