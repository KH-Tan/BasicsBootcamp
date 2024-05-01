//
//  UI31ListView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 22/2/24.
//

import SwiftUI

struct UI31ListView: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    
    @State var veggies: [String] = [
        "tomato", "carrot", "cabbage"
    ]
    
    var body: some View {
        
        NavigationView {
            
            List {
                Section(
                    header: Text("Fruits")) {
                    
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.gray)
                }
                .accentColor(.green)

                Section(
                    header: Text("Veggies")) {
                    
                    ForEach(veggies, id: \.self) { veggie in
                        Text(veggie.capitalized)
                    }
                    .listRowBackground(Color.yellow)

                }
                .accentColor(.yellow)

            }
            .accentColor(.blue)
            .listStyle(
                //SidebarListStyle()
                //PlainListStyle()
                //DefaultListStyle()
                //InsetListStyle()
                InsetGroupedListStyle()

            )
           
            .navigationTitle("List")
            .toolbar {
                addButton
                EditButton()
            }
            .accentColor(.red)
            
            
            
            
        }
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    UI31ListView()
}
