//
//  PeopleView.swift
//  FaceFacts
//
//  Created by Mark Edmunds on 3/28/24.
//

import SwiftUI
import SwiftData

struct PeopleView: View {
    @Environment (\.modelContext) var  modelContex
    @Query var people: [Person]
    var body: some View {
        List{
            ForEach(people){ person in
                NavigationLink(value: person){
                    Text(person.name)
                }
            }
            .onDelete(perform: deletePerson)
        }
    }
    
    init(searchString: String = "", sortOrder: [SortDescriptor<Person>] = []){
        _people = Query(filter: #Predicate{ person in
            if searchString.isEmpty{
                true
            }else{
                person.name.localizedStandardContains(searchString)
                || person.emailAddress.localizedStandardContains(searchString)
                || person.details.localizedStandardContains(searchString)
            }
        }, sort: sortOrder)
    }
    
    func deletePerson(in offsets: IndexSet){
        for offset in offsets{
            let person = people[offset]
            modelContex.delete(person)
        }
        
    }
}

#Preview {
    PeopleView()
}
