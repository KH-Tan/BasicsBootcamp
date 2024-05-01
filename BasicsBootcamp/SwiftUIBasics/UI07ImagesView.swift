//
//  UI07ImagesView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 1/2/24.
//

import SwiftUI

struct UI07ImagesView: View {
    var body: some View {
        Text("Hello, World!")
        Divider()
        
        Image("HelloFriendly")
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
        
        Divider()
        Image("cheese-toastie")
            .frame(width: 400, height: 250)
            //.opacity(0.5)
            //.background(.black)
            //.renderingMode(.template)
            //.foregroundStyle(.blue)
            .clipShape(
                //Circle()
                //Ellipse()
                //Capsule()
                RoundedRectangle(cornerRadius: 180.0)        
            )
    }
}

#Preview {
    UI07ImagesView()
}
