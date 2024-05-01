//
//  UI26AnimationsView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 5/2/24.
//

import SwiftUI

struct UI26AnimationsView: View {
    
    @State var isAnimating: Bool = false
    @State var isAnimatingTwo: Bool = false
    
    let timing: Double = 3.0
    
    var body: some View {
        VStack {
            Text("Hello, World!")
            
            Button("Button 1") {
                isAnimating.toggle()
            }
            
            Button("Button 2") {
                isAnimatingTwo.toggle()
            }
            
            
                
           
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 25)
                .animation(.default, value: isAnimating)

            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 50)
                .animation(.linear(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 75)
                .animation(.easeIn(duration: timing), value: isAnimating)

            // uses diff var
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.red)
                .frame(width: isAnimatingTwo ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimatingTwo)
            //
            
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimating)

            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(
                    .spring(
                        response: 0.3,
                        dampingFraction: 0.2,
                        blendDuration: 1.0), value: isAnimating)



        }
       
    }
}

#Preview {
    UI26AnimationsView()
}
