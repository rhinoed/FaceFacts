//
//  ContentView.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 3/28/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var  modelContex
    @State private var path = [Person]()
    @State private var searchText = ""
    @State private var sortOrder = [SortDescriptor(\Person.name )]
    
    var body: some View {
        NavigationStack(path: $path) {
            PeopleView(searchString: searchText,sortOrder: sortOrder)
                .navigationTitle("FaceFacts")
                .navigationDestination(for: Person.self) { person in
                    EditPersonView(person: person)
                    
                }
                .toolbar{
                    Menu("Sort",systemImage: "arrow.up.arrow.down"){
                        Picker("Sort", selection: $sortOrder){
                            Text("Name A-Z")
                                .tag([SortDescriptor(\Person.name)])
                            Text("Name Z-A")
                                .tag([SortDescriptor(\Person.name, order: .reverse)])
                        }
                    }
                    Button("Add Person", systemImage: "plus") {
                        addPerson()
                    }
                }
                .searchable(text: $searchText)
        }
        
    }
    
    func addPerson(){
        let person = Person(name: "", emainAddress: "", details: "")
        modelContex.insert(person)
        path.append(person)
    }
    
}

#Preview {
    ContentView()
}
