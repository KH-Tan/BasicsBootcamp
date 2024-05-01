//
//  UI58SwipeListView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 29/2/24.
//

import SwiftUI

struct UI58SwipeListView: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        Text("Hello, World!")
        
        List {
            
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        
                        Button("Delete") {
                            // code
                        }
                        .tint(.red)
                        Button("Archive") {
                            // code
                        }
                        .tint(.blue)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button {
                            // code
                        } label: {
                            Image(systemName: "house")
                        }
                        .tint(.green)
                    }
            }
            //.onDelete(perform: delete)
            //.onMove(perform: move)
            .listRowBackground(Color.gray)
            
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
    UI58SwipeListView()
}
