//
//  EditPersonView.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 3/28/24.
//

import SwiftUI

struct EditPersonView: View {
    @ Bindable var person: Person
    var body: some View {
        Form{
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
        }
        
        
    }
}

//#Preview {
//    EditPersonView(person: )
//}
