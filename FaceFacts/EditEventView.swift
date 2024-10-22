//
//  EditEventView.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 10/22/24.
//

import SwiftUI

struct EditEventView: View {
    @Bindable var event: Event
    var body: some View {
        Form {
            TextField("Event Name", text: $event.name)
            TextField("Event loction", text: $event.location)
        }
        .navigationTitle("Edit Event")
        .navigationBarTitleDisplayMode(.inline)
    }
}

//#Preview {
//    EditEventView()
//}
