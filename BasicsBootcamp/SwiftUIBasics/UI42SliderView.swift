//
//  UI42SliderView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 15/4/24.
//

import SwiftUI

struct UI42SliderView: View {
    @State var sliderValue: Double = 10
    @State var color: Color = .black
    
    
    var body: some View {
        Text("Hello, World!")
            .foregroundStyle(color)
        
        
        VStack {
            Text("Rating: \(sliderValue)")
            Text(String(format: "%.0f", sliderValue))
            Slider(
                value: $sliderValue,
                in: 0...10,
                step: 1.0,
                
                onEditingChanged: { _ in
                    if (sliderValue >= 8) {
                        color = .red
                    } else if (sliderValue >= 5) {
                        color = .yellow
                    } else {
                        color = .green
                    }
                },
                
                minimumValueLabel: Text("0"),
                maximumValueLabel: Text("10"),
                label: { Text("Title") }
            )
            .padding()
            .tint(.purple)
            Button("Default") {
                sliderValue = 5
            }
        }
    }
}

#Preview {
    UI42SliderView()
}
