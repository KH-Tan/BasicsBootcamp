//
//  UI991ListView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 29/2/24.
//

import SwiftUI

struct UI991ListView: View {
    @Environment(\.editMode) var editMode
    
    @State var fruits: [String] = [
        "Apple", "Orange", "Banana", //"Peach"
    ]
    @State var selectedFruits: Set<String> = []
    
    @State var searchString: String = "Banana"
    
    @State var users: [User] = [
        User(name: "Angel"),
        User(name: "Bobby"),
        User(name: "Charlie"),
        //User(name: "Dawn")
    ]
    @State var selectedUsers: Set<String> = []
    
    var body: some View {
        Text("Hello, World!")
        
        NavigationView {
            List (fruits, id: \.self, selection: $selectedFruits) { item in
                Text(item)
                    //.listRowBackground(Color.gray)
                    .listRowSeparatorTint(.blue, edges: .all)
                    .refreshable {
                        // do some stuff
                    }
            }
            .searchable(text: $searchString)
            .toolbar {
                EditButton()
            }
        }
        


        
        
        List (fruits, id: \.self) { item in
            Text(item)
                .listRowSeparator(.hidden)
        }
        .listStyle(.sidebar)
        .listStyle(.automatic)


        List {
            Section(header: Text("Section"), footer: Text("Footer")) {
                
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                }

            }
        }
        .listStyle(.grouped)

        NavigationView {
            
            List($users, selection: $selectedUsers) { user in
                Text(user.wrappedValue.name)
            }
            //.listStyle(.inset)
            .listStyle(.insetGrouped)
            .toolbar{ EditButton() }
            
        }
        
    }
}

struct User: Identifiable {
    let id = UUID()
    var name: String
}



#Preview {
    UI991ListView()
}
