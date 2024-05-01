//
//  UI19StateView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 6/2/24.
//

import SwiftUI

struct UI19StateView: View {
    
    @State private var bgColor: Color = Color.gray
    @State private var myTitle: String = "Title"
    @State private var myCount: Int = 0
    
    var body: some View {
        ZStack {
            
            bgColor.ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                
                Text(myTitle)
                    .font(.largeTitle)
                Text("Count: \(myCount)")
                    .font(.title)
                
                
                HStack(spacing: 20) {
                    
                    Button("Button 1") {
                        bgColor = .orange
                        myTitle = "Title 1"
                        
                    }
                    
                    Button("Button 2") {
                        bgColor = .gray
                        myTitle = "Title 2"
                        myCount += 1
                    }
                
                }
            }
            .foregroundStyle(.white)
            
            
        }
    }
}

#Preview {
    UI19StateView()
}
