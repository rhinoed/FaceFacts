//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 3/28/24.
//

import SwiftUI
import SwiftData

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
