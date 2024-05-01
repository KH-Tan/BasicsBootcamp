//
//  UI74ContentUnavailableView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 9/4/24.
//

import SwiftUI

struct UI74ContentUnavailableView: View {
    var body: some View {
        Text("Hello, World!")
        
        ContentUnavailableView.search(text: "NoNo")
        
        ContentUnavailableView("Some Title", systemImage: "heart.fill", description: Text("Some description"))
        
    }
}

#Preview {
    UI74ContentUnavailableView()
}
