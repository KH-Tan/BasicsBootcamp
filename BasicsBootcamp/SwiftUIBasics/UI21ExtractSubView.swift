//
//  UI21ExtractSubView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 6/2/24.
//

import SwiftUI

struct UI21ExtractSubView: View {
    
    var body: some View {
        ZStack {
            
            Color.blue.ignoresSafeArea(.all)
            
            HStack {
                MyBasket(title: "Apples", count: 1, color: .red)
                MyBasket(title: "Oranges", count: 5, color: .orange)
                MyBasket(title: "Bananas", count: 7, color: .yellow)
            }
            
        }
    }
}

struct MyBasket: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
        
    }
}

#Preview {
    UI21ExtractSubView()
}
