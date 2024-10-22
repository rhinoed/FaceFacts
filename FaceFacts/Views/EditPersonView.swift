//
//  EditPersonView.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 3/28/24.
//

import SwiftUI
import SwiftData

struct EditPersonView: View {
    @Environment(\.modelContext) var modelContext
    @Binding var navigationPath: NavigationPath
    @Bindable var person: Person
    @Query(sort: [
        SortDescriptor(\Event.name),
        SortDescriptor(\Event.location)
    ]) var events: [Event]
                  
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
                Picker("Met At", selection: $person.event){
                    Text("Unknown Event")
                        .tag(Optional<Event>.none)
                    if events.isEmpty == false{
                        Divider()
                        ForEach(events){ event in
                            Text(event.name)
                                .tag(Optional(event))
                        }
                    }
                }
                Button("Add a new event", action: addEvent)
            }
            Section{
                TextField("Notes", text: $person.details, axis: .vertical )
                
            }
            
            }
            .navigationBarTitle("Edit Person").navigationTitle("Edit Person")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Event.self) { event in
                EditEventView(event: event)
        }
    }
    func addEvent(){
        let event = Event(name: "", location: "")
        modelContext.insert(event)
        navigationPath.append(event)
    }
}

//#Preview {
//    EditPersonView(person: )
//}
