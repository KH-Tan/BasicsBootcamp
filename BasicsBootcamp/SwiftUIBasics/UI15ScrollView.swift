//
//  UI15ScrollView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 5/2/24.
//

import SwiftUI

struct UI15ScrollView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<100) { i in
                    
                    Text("Rectangle: \(i)")
                        .font(.headline)
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.blue)
                        .frame(width: 200, height: 150)
                    Divider()
                    
                }
            }

        }
        .padding(15)
    }
}

#Preview {
    UI15ScrollView()
}
