//
//  UI57ButtonsView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 30/4/24.
//

import SwiftUI

struct UI57ButtonsView: View {
    var body: some View {
        VStack (spacing: 20) {
        
            Button {
                
            } label: {
                Text("Plain")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
            }
            //.buttonStyle(PlainButtonStyle())
            .buttonStyle(.plain)
            .controlSize(.extraLarge)   // does not work
            .tint(.red)     // does not work


            Button {
                
            } label: {
                Text("Bordered large")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.circle)
            .controlSize(.mini)
            
            
            Button {
                
            } label: {
                Text("BorderedProminent extraLarge")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 15))
            .controlSize(.extraLarge)
            
            
            Button {
                
            } label: {
                Text("Borderless mini")
                    .frame(height: 50)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderless)
            .buttonBorderShape(.roundedRectangle(radius: 15))
            .controlSize(.mini)     // does not work
            .tint(.blue)
            

            Button {
                
            } label: {
                Text("myButtonStyle1")
            }
            .buttonStyle(myButtonStyle1())
            //.buttonStyle(myButtonStyle1(myColor: .blue))
            Button {
                
            } label: {
                Text("myButtonStyle2")
            }
            //.withButtonStyle2()
            .withButtonStyle2(myColor: .black)
            //.buttonStyle(myButtonStyle2())
            //.buttonStyle(myButtonStyle1(myColor: .blue))

        }
        .padding()
    
    }
}

extension View {
    func withButtonStyle2(myColor: Color = .orange) -> some View {
        buttonStyle(myButtonStyle2(myColor: myColor))
    }
}


struct myButtonStyle1: ButtonStyle {
    let myColor: Color
    init(myColor: Color = .green) {
        self.myColor = myColor
    }
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: 20)
            .foregroundStyle(.black)
            .padding(15)
            //.background(.orange.opacity( configuration.isPressed ? 0.8 : 0.5 ) )
            .background(myColor.opacity( configuration.isPressed ? 0.8 : 0.5 ) )
            .clipShape(.ellipse)
            .scaleEffect( configuration.isPressed ?
                         CGSize(width: 2.0, height: 2.0) :
                         CGSize(width: 1.0, height: 1.0)
            )
            .brightness( configuration.isPressed ?
                         0.3 : 0.0 )
    }
}
struct myButtonStyle2: ButtonStyle {
    let myColor: Color
    init(myColor: Color = .green) {
        self.myColor = myColor
    }
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(height: 20)
            .foregroundStyle(.black)
            .padding(15)
            //.background(.orange.opacity( configuration.isPressed ? 0.8 : 0.5 ) )
            .background(myColor.opacity( configuration.isPressed ? 0.8 : 0.5 ) )
            .clipShape(.capsule)
            .scaleEffect( configuration.isPressed ?
                         CGSize(width: 2.0, height: 2.0) :
                         CGSize(width: 1.0, height: 1.0)
            )
            .brightness( configuration.isPressed ?
                         0.3 : 0.0 )
    }
}

#Preview {
    UI57ButtonsView()
}
