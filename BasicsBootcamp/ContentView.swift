//
//  ContentView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 30/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Divider()
            Text("Konnichi Wa")
            Text("Hola")
 
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
