//
//  UI18ButtonsView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 6/2/24.
//

import SwiftUI

struct UI18ButtonsView: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            Button("Button 1") {
                self.title = "Pressed"
            }
            //.tint(Color.green)
            .accentColor(.orange)
            .font(.title)
            .background(.gray)
    
            Button(
                action: {
                    self.title = "Pressed by 2"
                },
                label: {
                    Text("Button 2")
                        .font(.title)
                        .padding()
                        .foregroundColor(.white)
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(15)
                        )
                }
            )

            Button(
                action: {
                    self.title = "Pressed by 3"
                },
                label: {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 100, height: 100)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.red)
                        )

                }
            )
            
        }
    }
}

#Preview {
    UI18ButtonsView()
}
