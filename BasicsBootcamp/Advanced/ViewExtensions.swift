//
//  ViewExtensions.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 30/4/24.
//

import SwiftUI

extension View {
    
    func myVxBgRectRounded() -> some View {
        self.font(.title)
            .padding(20)
            .background(.orange)
            .opacity(0.5)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
            .foregroundStyle(.black)
    }

    func myVxBgRect() -> some View {
        self.font(.title)
            .padding(10)
            .background(.orange)
            .opacity(0.5)
            .clipShape(Rectangle())
            .foregroundStyle(.black)
    }

    func myVxVmTextBg() -> some View {
        modifier(myVmTextBg())
    }
    func myVxVmTextBgRounded() -> some View {
        modifier(myVmTextBgRounded())
    }
    
    
}



extension Image {
    
    func myIxImageShape() -> some View {
        self
            .resizable()
            .scaledToFit()
            .padding(15)
            .frame(height: 150)
            .clipShape(.circle)
    }
    
}


