//
//  UsingViewExtensions.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 30/4/24.
//

import SwiftUI

struct UsingViewXViewM: View {
    var body: some View {
        Text("Hello, World!")
            .myVxBgRect()
        Text("Hello, World!")
            .myVxBgRectRounded()
        
        Divider()
        Text("Hello, World!")
            .modifier(myVmTextBg())
        Text("Hello, World!")
            .modifier(myVmTextBgRounded())
        
        Divider()
        Text("Hello, World!")
            .myVxVmTextBg()
        Text("Hello, World!")
            .myVxVmTextBgRounded()
        
        Divider()
        Image(systemName: "heart.fill")
            .myIxImageShape()
    }
}

#Preview {
    UsingViewXViewM()
}
