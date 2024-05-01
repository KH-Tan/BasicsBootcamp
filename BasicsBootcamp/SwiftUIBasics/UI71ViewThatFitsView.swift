//
//  UI71ViewThatFitsView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 22/2/24.
//

import SwiftUI

struct UI71ViewThatFitsView: View {
    var body: some View {

        Text("Hello, World! Hello, World! Hello, World!")
            .font(.system(size: 36))
            .lineLimit(1)
            .minimumScaleFactor(0.9)
        
        ViewThatFits(in: .horizontal) {
            Text("Hello, World! Hello, World! Hello, World!")
                .font(.system(size: 24))
            Text("Hello, World! Hello, World!")
                .font(.system(size: 24))
            Text("Hello, World!")
                .font(.system(size: 24))
            Text("Hello!")
                .font(.system(size: 24))
        }
        .frame(width: 300, height: 150, alignment: .center)
        .background(.gray)
        
        ViewThatFits(in: .horizontal) {
            Text("Hello, World! 72")
                .font(.system(size: 72))
            Text("Hello, World! 60")
                .font(.system(size: 60))
            Text("Hello, World! 48")
                .font(.system(size: 48))
            Text("Hello, World! 36")
                .font(.system(size: 36))
        }
        .frame(width: 400, height: 200, alignment: .center)
        .background(.gray)
    }
}

#Preview {
    UI71ViewThatFitsView()
}
