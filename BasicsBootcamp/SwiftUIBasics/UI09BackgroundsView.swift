//
//  UI09BackgroundsView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 1/2/24.
//

import SwiftUI

struct UI09BackgroundsView: View {
    var body: some View {
        Text("Hello, World!")

            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red, Color.blue]), 
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 200, height: 200)
            )
            .background(
                Circle()
                    .fill(.gray)
                    .frame(width: 250, height: 250)
            )
            .background(
                Rectangle()
                    .fill(.orange)
                    .frame(width: 300, height: 300)
            )
            .overlay(
                Text("5")
                    .frame(width: 100, height: 100, alignment: .bottomTrailing)
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    //.background(.blue)
                
            )
    }
}

#Preview {
    UI09BackgroundsView()
}
