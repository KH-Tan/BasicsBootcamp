//
//  UI17SafeAreaView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 6/2/24.
//

import SwiftUI

struct UI17SafeAreaView: View {
    var body: some View {
        ZStack {
            
            // background
            Color
                .orange
                //.edgesIgnoringSafeArea(.bottom)    deprecated
                .ignoresSafeArea(edges: .all)
                //.padding(.horizontal, 15)

            // foreground
            VStack {
                Text("Hello, World!")
                Spacer()
            }
            .frame(width: 350, height: 600)
            .background(.green)
            
            

        }
       
       
        
    }
}

#Preview {
    UI17SafeAreaView()
}
