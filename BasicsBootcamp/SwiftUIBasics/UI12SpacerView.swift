//
//  UI12SpacerView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 1/2/24.
//

import SwiftUI

struct UI12SpacerView: View {
    var body: some View {
        VStack {
            
            HStack() {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.largeTitle)
            //.background(.gray)
            .padding(.horizontal)
            //.background(.black)

            Spacer()
            
            HStack() {
                
                Image(systemName: "xmark")
                Image(systemName: "xmark")
                Spacer(
                    //minLength: nil   default is nil not 0
                    minLength: 0
                )
                Image(systemName: "gear")
                Image(systemName: "gear")
                Image(systemName: "gear")
                Spacer(
                    //minLength: nil
                    minLength: 0
                )
                Image(systemName: "xmark")
                Image(systemName: "xmark")
                Image(systemName: "xmark")
                Spacer(
                    //minLength: nil
                    minLength: 0
                )
                Image(systemName: "gear")
                Image(systemName: "gear")
               
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
    }
}

#Preview {
    UI12SpacerView()
}
