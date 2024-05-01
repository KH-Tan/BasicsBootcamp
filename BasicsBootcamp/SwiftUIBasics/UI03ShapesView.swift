
import SwiftUI

struct UI03ShapesView: View {
    var body: some View {
        Text("Hello, World!")
        Divider()
        
        //Circle()
        //Rectangle()
        RoundedRectangle(cornerRadius: 50)
        //Ellipse()
        //Capsule(style: .circular)
            //.fill(.blue.opacity(0.7))
            //.foregroundStyle(.orange.opacity(0.7))
            //.stroke()
            //.stroke(.orange)
            //.stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [55]))
            .trim(from: 0.3, to: 0.8)
            .frame(width: 300, height: 200)
        
        
    }
}

#Preview {
    UI03ShapesView()
}
