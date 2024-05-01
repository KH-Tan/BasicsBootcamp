//
//  UI75ControlGroupView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 9/4/24.
//

import SwiftUI

struct UI75ControlGroupView: View {
    var body: some View {
        Text("Hello, World!")
        Menu("My Menu") {
            ControlGroup("Group 1") {
                Button("Button 1a") {
                    
                }
                Button("Button 1b") {
                    
                }
            }
            
            

            Button("Button 2") {
                
            }

            Menu("Menu 3") {
                Button("Button 3a") {
                    
                }
                Button("Button 3b") {
                    
                }
                
            }
        }
        Menu {
            Button("New 1") {
                
            }
            Button("New 2") {
                
            }
        } label: {
            Text("New Menu")
                .font(.largeTitle)
                .padding()
                .background(.orange)
 
        }

    }
}

#Preview {
    UI75ControlGroupView()
}
