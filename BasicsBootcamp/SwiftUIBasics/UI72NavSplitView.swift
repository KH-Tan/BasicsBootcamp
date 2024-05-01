//
//  UI72NavSplitView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 22/2/24.
//

import SwiftUI

struct UI72NavSplitView: View {

    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = .fruits
    @State private var selectedFruit: Fruit? = nil

    var body: some View {
        
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
                    Button(category.rawValue.capitalized) {
                        selectedCategory = category
                    }
            }
            
            
            .navigationTitle("Category")
            .font(.title)
            //.padding()
            
        } content: {
            
            if let selectedCategory {
                
                switch selectedCategory {
                case .fruits:
                    List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
                        Button(fruit.rawValue.capitalized) {
                            selectedFruit = fruit
                        }
                    }
                    .navigationTitle("Fruits")
                    .font(.title2)
                    .padding()
                    
                case .vegetables:
                    Text("None")
                    //EmptyView()
                case .meat:
                    Text("None")
                    //EmptyView()
                }
            } else {
                Text("None")
            }

        } detail: {
            
            if let selectedFruit {
                
                ViewThatFits {
                    Text(selectedFruit.rawValue.capitalized)
                    .navigationTitle("Selected:")
                    .font(.system(size: 48))
                }
                
                //.padding()
            } else {
                Text("None")
            }
            
        }
        .navigationSplitViewStyle(.balanced)
                        
    }
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meat
}
enum Fruit: String, CaseIterable {
    case apple, orange, banana, pear, kiwi
}


#Preview {
    UI72NavSplitView()
}
