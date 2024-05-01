//
//  UI69PopoverView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 20/4/24.
//

import SwiftUI

struct UI69PopoverView: View {
    @State private var showPopover: Bool = false
    private var feedbackOptions: [String] = ["Positive", "Neutral", "Negative"]
    
    var body: some View {
        Text("Hello, World!")
        
        /*
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.topLeading)) {
                HStack {
                    Text("AaJaan")
                    Spacer()
                }
                .padding(.top)
                .padding(.leading)
                
                Divider()
                
                Text("Hello, how can I help you?")
                    .padding()
                    .presentationCompactAdaptation(.popover)
            }

        */
            //Spacer()

        
            // .point(.top)
            // .rect(.rect(.init(x: 200, y: 200, width: 0, height: 0)))

            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top)) {
                    VStack(alignment: .leading) {
                        Text("Positive")
                        Divider()
                        Text("Neutral")
                        Divider()
                        Text("Negative")
                    }
                    .frame(height: 150)
                    .padding(25)
                    .presentationCompactAdaptation(.popover)
                    //.presentationCompactAdaptation(horizontal: .sheet, vertical: .popover)
                    //.presentationCornerRadius(50)
            }
            
        
        Button {
            showPopover.toggle()
        } label: {
            Text("PopOver")
                .frame(width: 300, height: 50)
        }
        .buttonStyle(.bordered)
        .buttonBorderShape(.roundedRectangle)
        //.controlSize(.large)


    }
}

#Preview {
    UI69PopoverView()
}
