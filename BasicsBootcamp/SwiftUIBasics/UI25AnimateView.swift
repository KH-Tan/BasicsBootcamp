//
//  UI25AnimateView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 5/2/24.
//

import SwiftUI

struct UI25AnimateView: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(
                    .default
                    
                    // bugs ???
                    //.repeatCount(5, autoreverses: false)
                    //Animation.default.repeatCount(5)
                    
                ) {
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50.0 : 25.0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 250,
                    height: isAnimated ? 100 : 250)
                .rotationEffect(Angle(degrees: isAnimated ? 360 :0))
                .offset(y: isAnimated ? 250 : 0)
            Spacer()
            
        }
        
        Text("Hello, World!")
        
    }
}

#Preview {
    UI25AnimateView()
}
