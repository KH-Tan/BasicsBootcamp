//
//  UI27TransitionsView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 5/2/24.
//

import SwiftUI

struct UI27TransitionsView: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
                
            }
            
            if showView {
                
                RoundedRectangle(cornerRadius: 25.0)
                    //.fill(.blue)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .opacity.animation(.easeInOut)
                    ))
                    .animation(.easeIn, value: true)
                               
                               
                               //, value: true)

                
                        //AnyTransition.scale.animation(.easeIn))
                
                //.transition(.slide)
                    //.transition(.move(edge: .bottom))
                    //.animation(
                        //.spring()
                        //.easeIn
                        //value: true
                    //)
                
            }

            
        }
        .edgesIgnoringSafeArea(.bottom)

    }
}

#Preview {
    UI27TransitionsView()
}
