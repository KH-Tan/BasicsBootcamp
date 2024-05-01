//
//  UI76ObservableView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 23/4/24.
//

import SwiftUI

@Observable
class OModel {
    var title: String = "Main Title"
}


struct UI76ObservableView: View {
    // @State NOT needed    ?????????????????????????????   confirmed
    let myModel = OModel()
    
    var body: some View {
        
        Text(myModel.title)
        
        VStack {
            Button("Top View") {
                myModel.title = "Top View"
            }
            .buttonStyle(.bordered)
            
            ChildView(vModel: myModel)                // *******************
            OtherView()                            // ^^^^^^^^^^^^^^^^^^^^
        }
        .environment(myModel)
    }
}


struct ChildView: View {
    // @Bindable NOT needed    ?????????????????????
    @Bindable var vModel: OModel                       // *****************
    
    var body: some View {
        Button("Child View") {
            vModel.title = "Child View"
        }
        .buttonStyle(.borderedProminent)
    }
}

struct OtherView: View {
    @Environment(OModel.self) var vModel            // ^^^^^^^^^^^^^^^^^^^^
    
    var body: some View {
        Button("Other View") {
            vModel.title = "Other View"
        }
        .buttonStyle(.borderedProminent)
        .tint(.brown)
    }
}


#Preview {
    UI76ObservableView()
}
