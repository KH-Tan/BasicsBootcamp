//
//  UI13InitEnumView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 2/2/24.
//

import SwiftUI

struct UI13InitEnumView: View {
    
    let bgColor: Color
    let count: Int
    let title: String
    
    // below is the default init
    // init(bgColor: Color, count: Int, title: String) {
    //    self.bgColor = bgColor
    //    self.count = count
    //    self.title = title
    // }
    
    // below is the custom init
    init(count: Int, title: Fruits) {
        self.count = count
        
        if title == .Apples {
            self.bgColor = .red
            self.title = "Apples"
        } else if title == .Oranges {
            self.bgColor = .orange
            self.title = "Oranges"
        } else if title == .Kiwi {
            self.bgColor = .green
            self.title = "Kiwi"
        } else {
            self.bgColor = .white
            self.title = "White"
        }
            
    }
    
    enum MyNums {
        case zero, one, two, three, four, five, six, seven, eight, nine
    }
    
    
    
    enum Fruits {
        case Apples
        case Oranges
        case Kiwi
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 100, height: 100)
        .background(bgColor)
        .cornerRadius(25)
        
    }
}

#Preview {
    HStack {
        UI13InitEnumView(count: 15, title: .Apples)
        UI13InitEnumView(count: 5, title: .Oranges)
        UI13InitEnumView(count: 10, title: .Kiwi)
    }
  
}
