//
//  ViewModifiers.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 30/4/24.
//

import SwiftUI

struct myVmTextBgRounded: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
    }
    
}

struct myVmTextBg: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect)
    }
    
}


