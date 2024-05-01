//
//  UI11PaddingView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 2/2/24.
//

import SwiftUI

struct UI11PaddingView: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 10
        ) {
            
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.top, 30)
                .padding(.leading, 15)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge")
                .font(.body)
                .padding()
                .padding(.bottom, 20)

        }
        .background(
            Color.gray
                .cornerRadius(25)
        )
        .padding(.all, 1)
        .background(
            Color.black
                .cornerRadius(25)
        )
        
        .background(
            Color.black
                .cornerRadius(35)
                .shadow(
                    color: .black.opacity(0.8),
                    radius: 10,
                    x: 10.0, y: 10.0
                    
                )
        )
        .padding(.horizontal, 80)

        
    }
}

#Preview {
    UI11PaddingView()
}
