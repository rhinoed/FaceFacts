//
//  EditPersonView.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 3/28/24.
//

import SwiftUI

struct EditPersonView: View {
    @Bindable var person: Person
    var body: some View {
        Form{
            #if os(iOS)
            Section{
                TextField("Name", text: $person.name)
                    .textContentType(.name)
                TextField("Email Address", text: $person.emailAddress)
                    .textContentType(.emailAddress)
                    .textInputAutocapitalization(.never)
            }
            Section{
                TextField("Details about this person", text: $person.details, axis: .vertical )
                
            }
            #endif
            #if os(macOS)
            TextField("Name", text: $person.name)
                .textContentType(.name)
            TextField("Email Address", text: $person.emailAddress)
                .textContentType(.emailAddress)
                
            TextField("Details about this person", text: $person.details, axis: .vertical )
            
            #endif
            
        }
        
        
    }
}

//#Preview {
//    EditPersonView(person: )
//}
