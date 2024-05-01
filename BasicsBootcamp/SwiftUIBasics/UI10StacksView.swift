//
//  UI10StacksView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 1/2/24.
//

import SwiftUI

struct UI10StacksView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.yellow)
                .frame(width: 400, height: 800, alignment: .center)
            
            
            VStack(alignment: .center) {
                
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 150, height: 150)
                
  
                
                HStack {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
               
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 75)
                    
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 50)
                    
                }
                .background(.white)
                
            }
            .background(.black)

            
        }
        

        
        
        

        
    }
}

#Preview {
    UI10StacksView()
}
